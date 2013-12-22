function(v2r_scp target)
    if (V2R_HOSTNAME)
        add_custom_command(TARGET ${target}
                    POST_BUILD
                    DEPENDS ${target}
                    COMMAND echo Copy ${target} to ${V2R_HOSTNAME}:
                    COMMAND scp ${target} ${V2R_HOSTNAME}:${V2R_DEMO_PATH}
                    )
    else(V2R_HOSTNAME)
        message ("V2R_HOSTANME is not defined, ${target} will not be copyed to the device")
    endif(V2R_HOSTNAME)
endfunction()

