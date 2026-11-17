####################################################################################################
## Shared Design Configuration
####################################################################################################

# ---------------------------------------------------------------- #
# Design

set DESIGN                MohoTop
set CLK_NAME              main_clk
set PORT_CLK              io_pins_clk
set PORT_RST              io_pins_rst

# ---------------------------------------------------------------- #
# Input

set RTL_LIST              [list [file join ${RTL_DIR} ${DESIGN}.v]]
set SDC_FILE              [file join ${SDC_DIR} ${DESIGN}.sdc]

# ---------------------------------------------------------------- #
# Genus Output

set GENUS_FINAL_DIR       [file join ${GENUS_BUILD} 05_final]
set GENUS_NETLIST         [file join ${GENUS_FINAL_DIR} ${DESIGN}_syn.v]
set GENUS_SDC_MAIN        [file join ${GENUS_FINAL_DIR} ${DESIGN}_syn_func_main.sdc]