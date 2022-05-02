if (os_type == os_windows)
    var szDllName = "ue.dll"
else if (os_type == os_linux)
    szDllName = "libue.so"
else if (os_type == os_linux)
    szDllName = "libue.dylib"
external_free(szDllName)
