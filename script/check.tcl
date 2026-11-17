set FAILED false

foreach FILE ${argv} {
    set CHANNEL [open ${FILE} r]
    set DATA [read ${CHANNEL}]
    close ${CHANNEL}

    if {![info complete ${DATA}]} {
        puts stderr "Incomplete Tcl command: ${FILE}"
        set FAILED true
    }
}

if {${FAILED}} {
    exit 1
}
