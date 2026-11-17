# EE291F HW1 — Cadence Genus Synthesis Flow for MohoTop

RTL-to-netlist synthesis flow for **MohoTop**, a SpinalHDL-generated RV32I
five-stage processor, using **Cadence Genus 25.10** and the **HL55** process
library. The flow is Make-driven and split into five stages:
`elaborate` → `syn_generic` → `syn_map` → `syn_opt` → `final`.

## Design

| Item | Value |
|---|---|
| Top module | `MohoTop` |
| Description | RV32I five-stage pipelined processor (SpinalHDL-generated Verilog) |
| Clock | `io_pins_clk`, period 6.667 ns (150 MHz) |
| Reset | `io_pins_rst` |
| Memories | 2 × `mem_hl55_2048x32_sp_m1` (`topArea_soc/rom_m`, `topArea_soc/ram_u`) |
| Technology | HL55 (`HL055P_7M6X1T4_RDL`), RVT + LVT standard cells |
| Corners | `view_ss_ccw` (1.08 V, 125 °C, cworst) / `view_ff_ccb` (1.32 V, −40 °C, cbest) |
| Synthesis tool | Cadence Genus 25.10-p002 |

## Repository layout

```
input/rtl/MohoTop.v          RTL source (copied from the course project)
input/sdc/MohoTop.sdc        Timing constraints (copied unchanged)
script/path.tcl              Directory layout derived from the project root
script/tech.tcl              PVT corners, library names, technology paths
script/design.tcl            Design name, ports, inputs, output paths
script/helper.tcl            Shared helper procs
script/mmmc.tcl              Library sets, RC corners, constraint modes, views
script/check.tcl             Tcl structure check used by `make tcl-check`
script/genus/env.tcl         Per-tool bootstrap
script/genus/setting.tcl     Efforts, per-stage uncertainty, dont-use cells
script/genus/genus.tcl       Runs all stages in one Genus process
script/genus/01_elaborate.tcl
script/genus/02_generic.tcl
script/genus/03_map.tcl
script/genus/04_opt.tcl
script/genus/05_final.tcl    Exports final netlist/SDC and collects deliverables
Makefile                     Project-wide settings
tool-genus.mk                Genus targets and log handling
netlist/                     Final netlist and SDC (deliverables)
reports/                     report_summary outputs (deliverables)
report/                      Homework report sources and PDF
build/                       Generated output (gitignored)
tech ->                      Symlink to the shared process library (gitignored)
```

## Prerequisites

- `genus`, `make`, and `tclsh` on `PATH`
- Read access to the shared process library at
  `/mnt/nfs_share/EE291F/3003/tech.prj`

## Quick start

```sh
make init              # create tech -> /mnt/.../tech.prj (once per clone)
make tcl-check         # check Tcl file structure

make genus-elaborate
make genus-generic
make genus-map
make genus-opt
make genus-final
```

`make genus` runs all five stages in a single Genus process. For the homework
report, run the five per-stage targets above instead: each run gets its own
timestamped log under `build/genus/`, which gives one log/screenshot per stage.

## Flow stages

| Stage | Command | Action | Main outputs |
|---|---|---|---|
| 01_elaborate | `make genus-elaborate` | Read MMMC/LEF/RTL, elaborate, apply dont-touch and dont-use | `MohoTop.db`, `netlist.v`, `check_design.rpt` |
| 02_generic | `make genus-generic` | `syn_generic` (technology-independent optimization) | `MohoTop.db`, `netlist.v`, `syn_generic_*.rpt` |
| 03_map | `make genus-map` | `syn_map` (map to standard cells) | `MohoTop.db`, `netlist.v`, `syn_map_*.rpt` |
| 04_opt | `make genus-opt` | `syn_opt` (optimize the mapped netlist) | `MohoTop.db`, `netlist.v`, `syn_opt_*.rpt` |
| 05_final | `make genus-final` | Export final netlist/SDC, collect deliverables | `MohoTop_syn.v`, `MohoTop_syn_func_main.sdc`, `genus_*.rpt` |

Clock uncertainty is tightened per stage (1.25 → 1.00 → 0.75 ns setup for
generic/map/opt) and restored to the original 0.50 ns for the final report.
Each stage reads the previous stage's database, so the stages must be run in
order. `stage_make_dir` recreates the stage directory on every run.

## Outputs

Final Genus files are written to `build/genus/05_final/`:

- `MohoTop_syn.v` — gate-level netlist
- `MohoTop_syn_func_main.sdc` — exported constraints for `func_main`
- `genus_qor.rpt`, `genus_area.rpt`, `genus_gates.rpt`,
  `genus_time_view_*.rpt`, `final.rpt`

The last stage also copies the submission files into the repository layout:

```
netlist/
├── MohoTop_syn.v
└── MohoTop_syn_func_main.sdc
reports/
└── *.rpt
```

## Configuration

All settings live in Tcl files under `script/`; stage scripts reference variables
instead of hardcoding values.

| File | Purpose |
|---|---|
| `script/path.tcl` | Directory layout |
| `script/tech.tcl` | PVT corners, standard-cell/memory library names, LEF/LIB/DB paths |
| `script/design.tcl` | `DESIGN`, clock/reset ports, input files, output paths |
| `script/mmmc.tcl` | `lib_ff`/`lib_ss`, `rc_ccb`/`rc_ccw`, `func_main`, analysis views |
| `script/genus/setting.tcl` | Synthesis effort, per-stage uncertainty, dont-use patterns |
| `script/genus/05_final.tcl` | Final export and deliverable collection |

The memory macro is `mem_hl55_2048x32_sp_m1`, available in
`tech.prj/lib/mem/` and `tech.prj/db/mem/`. The vendor `.lib` marks the macro
`dont_use : true`; this is normal and does not prevent the RTL instances from
being preserved in the netlist.

## Report

The homework report is at [`report/report.pdf`](report/report.pdf). LaTeX source
and terminal-transcript figures are in [`report/`](report/).

## Version control

The complete project is publicly available on GitHub:
<https://github.com/pineklll/HW1-Cadence-Genus-Synthesis-Flow-for-MohoTop>

Git tracked the flow scaffold, Makefile/Genus targets, configuration fixes, the
stage scripts, and the report. The recorded commits are:

```text
cd5b22b  2026-11-12  Initial commit
9225c82  2026-11-12  Scaffold MohoTop Genus synthesis flow
421d80b  2026-11-17  Update Makefile for MohoTop Genus flow
d224fe0  2026-11-17  Add tool-genus.mk
2723081  2026-11-17  Include tool-genus.mk in Makefile
181d25a  2026-11-17  Fix Makefile line 38 syntax error
7001be5  2026-11-17  Complete Tcl scripts; update tech/design config
b3e279c  2026-11-17  Finish tech.tcl and 01_elaborate.tcl
de59744  2026-11-17  Finish remaining stages and report
11e138c  2026-11-17  Add student ID, LaTeX ignores, clean root
fbee29c  2026-11-17  Include report PDF in deliverables screenshot
```

## License

MIT — see [LICENSE](LICENSE).