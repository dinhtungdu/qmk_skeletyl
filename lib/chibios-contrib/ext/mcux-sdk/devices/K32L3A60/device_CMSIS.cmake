if(NOT DEVICE_CMSIS_INCLUDED)

    set(DEVICE_CMSIS_K32L3A60_CM4_INCLUDED true CACHE BOOL "device_CMSIS component is included.")

    target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    )

    target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/.
    )

    #OR Logic component
    if(CONFIG_DEVICE_K32L3A0_cm4) 
        include(CMSIS_Include_core_cm4)
    endif()
    if(CONFIG_DEVICE_K32L3A0_cm0plus) 
        include(CMSIS_Include_core_cm0plus)
    endif()


endif()