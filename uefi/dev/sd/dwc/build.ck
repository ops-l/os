/*++

Copyright (c) 2015 Minoca Corp. All Rights Reserved

Module Name:

    SD DesignWare

Abstract:

    This library contains the DesignWare Secure Digital (card) controller
    device.

Author:

    Chris Stevens 16-Jul-2015

Environment:

    Firmware

--*/

function build() {
    sources = [
        "sddwc.c"
    ];

    includes = [
        "-I$///uefi/include"
    ];

    sources_config = {
        "CFLAGS": ["$CFLAGS", "-fshort-wchar"],
        "CPPFLAGS": ["$CPPFLAGS"] + includes
    };

    lib = {
        "label": "sddwc",
        "inputs": sources,
        "sources_config": sources_config
    };

    entries = static_library(lib);
    return entries;
}

return build();