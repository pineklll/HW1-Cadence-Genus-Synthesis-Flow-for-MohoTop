####################################################################################################
## DC Main Script
####################################################################################################

source [file join [file dirname [info script]] env.tcl]

# ---------------------------------------------------------------- #
# Stage

# Run every stage
foreach STAGE ${DC_STAGES} {
    source [file join ${DC_SCRIPT} ${STAGE}.tcl]
}

# Quit
exit