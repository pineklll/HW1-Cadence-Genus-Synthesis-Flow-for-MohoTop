# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository status

This repo currently contains only the assignment handout (`EE291F_HW1.pdf`) and a
LICENSE — no flow scripts, RTL, or build products are checked in yet. The work is to
set up and run a Cadence Genus synthesis flow for the `MohoTop` RISC-V design using
read-only course materials under `/mnt/nfs_share/EE291F/3003`.

## Assignment summary (EE291F HW1)

- Top module: `MohoTop`; clock `io_pins_clk` (period 6.667 ns, 150 MHz); reset `io_pins_rst`.
- Process: HL55. Two memory instances: `topArea_soc/rom_m` and `topArea_soc/ram_u`,
  both `mem_hl55_2048x32_sp_m1`.
- Required flow, in order: `elaborate` → `syn_generic` → `syn_map` → `syn_opt` →
  `final` (export netlist, SDC, reports).
- Do not modify the RTL or SDC. `/mnt` is read-only; copy inputs into the working
  directory if needed. If constraints are temporarily overridden in a tool session,
  restore the original SDC before the final run/report.
- Submission zip: `EE291F_HW1_<Name>_<ID>.zip` containing `report.pdf`,
  `netlist/MohoTop_syn.v`, `netlist/MohoTop_syn_func_main.sdc`, and `reports/*.rpt`.
  Do not submit `build/`, `.db` databases, or the process library.

## Materials (read-only)

Note: the PDF writes `FlowPrjRISC-V`, but the actual directory is `FlowPrjRISCV`.

- RTL: `/mnt/nfs_share/EE291F/3003/FlowPrjRISCV/input/rtl/MohoTop.v`
  (SpinalHDL-generated Verilog, ~8.5k lines).
- SDC: `/mnt/nfs_share/EE291F/3003/FlowPrjRISCV/input/sdc/MohoTop.sdc`
  (creates clock `main_clk` on `io_pins_clk`, input/output delays, output load).
- Tech: `/mnt/nfs_share/EE291F/3003/tech.prj` — `lib/{std,mem}`, `db/{std,mem}`,
  `lef/{tech,std,mem}`, `qrc/{cbest,cworst}`, `tf`, `tlup`, `gds`, `map`, `ndm`.
  - Std: `M31GPSC900HL055PR` (RVT) / `M31GPSC900HL055PL` (LVT), FF
    `N40CFF1P32_cbest_ccs`, SS `125CSS1P08_cworst_ccs`.
  - Memory: `mem_hl55_2048x32_sp_m1_ff1p32vn40c` and `..._ss1p08v125c`
    (`.lib` and `.db`); LEF is `lef/mem/mem_hl55_2048x32_sp_m1.plef`. The library
    cell name matches the RTL instance.
- Reference course flow: `/mnt/nfs_share/EE291F/3003/FlowLabMLP` (for design
  `mmForMLP`). It has a `Makefile`, `script/genus/01_elaborate.tcl` …
  `05_final.tcl`, plus shared `script/{path,tech,design,helper,mmmc}.tcl`.
  Copy it to the working directory rather than editing in place.

## Commands

Genus 25.10-p002_1 is installed and on `PATH`
(`GENUS_HOME=/opt/cadence/installs/DDI251/GENUS251`).

```bash
genus                                                     # interactive shell
genus -batch -files <script.tcl> -log <logfile>           # batch run (verified)
genus -version                                            # check installation
```

When using the copied reference Makefile (its `genus-run` target wraps the batch
command and writes logs under `build/genus/`):

```bash
make init                # symlink tech -> course tech dir (change target to tech.prj)
make genus-elaborate
make genus-generic
make genus-map
make genus-opt
make genus-final
make genus               # all five stages
make genus-clean
make tcl-check           # tclsh syntax check of all scripts
```

Adjust the Makefile's `TECH_SRC` to `/mnt/nfs_share/EE291F/3003/tech.prj`.

## Reference flow architecture

The lab flow is stage-chained through Genus databases: each stage script sources
`env.tcl`, creates its own `build/genus/<stage>/`, restores the previous stage with
`read_db`, runs one synthesis command, writes reports/snapshot/netlist, then
`write_db` for the next stage.

- `01_elaborate.tcl`: sets efforts (`syn_generic_effort`/`syn_map_effort`/
  `syn_opt_effort`), reads MMMC (`read_mmmc script/mmmc.tcl`), reads LEF and RTL,
  `elaborate`, `init_design`, applies dont-touch to clock/reset and a dont-use cell
  list, writes `check_design.rpt` and the generic netlist.
- `02_generic.tcl` / `03_map.tcl` / `04_opt.tcl`: restore prior DB, tighten clock
  uncertainty via `c_sdc_modify_uncertainty`, run `syn_generic` / `syn_map` /
  `syn_opt`, emit `report_summary`, netlist, DB.
- `05_final.tcl`: restores `04_opt`, restores uncertainty to the original value,
  writes a snapshot, `report_summary`, `write_netlist`, and
  `write_sdc -constraint_mode func_main -exclude {set_dont_touch_network set_dont_use}`.

Ports of adaptation for this homework:

- `script/design.tcl`: `DESIGN MohoTop`, `CLK_NAME main_clk`, `PORT_CLK io_pins_clk`,
  `PORT_RST io_pins_rst`, and output names `${GENUS_FINAL_DIR}/MohoTop_syn.v` /
  `MohoTop_syn_func_main.sdc`.
- `script/tech.tcl`: point `TECH_DIR` at `tech.prj`; replace the lab's
  `mem55lpw1024d16sp`/`mem55lpw256d16sp` memory entries with
  `mem_hl55_2048x32_sp_m1` in the `LIB_LIST_FF`/`LIB_LIST_SS` (and LEF) lists.
  The memory libraries must be in the MMMC library sets or elaboration leaves the
  memory instances unresolved.
- `mmmc.tcl` builds `lib_ff`/`lib_ss` library sets, `rc_ccb`/`rc_ccw` corners,
  `func_main` constraint mode, and `view_ff_ccb`/`view_ss_ccw` analysis views.
  The SDC is supplied through `func_main`.

Useful helpers in `script/helper.tcl`: `stage_make_dir` (deletes and recreates a
stage directory), `c_get_base_cell_names` (expands dont-use patterns),
`c_sdc_modify_uncertainty` (per-stage setup/hold uncertainty). The lab setting uses
0.50/1.25/1.00/0.75/0.50 ns for elaborate/generic/map/opt/final, with hold 0.05 ns.

## Deliverable checks

`report_summary -directory <stage_dir>` produces the `.rpt` files that must go into
`reports/`. Per the handout, the final report needs one screenshot/log per stage
(command plus success message, with a timestamp), a short description of files
generated, an `ls -lh` of the netlist/SDC/report outputs, and a few lines of key
timing/area results. `build/` is disposable and locally ignored by the reference
project; do not include it in the submission.
