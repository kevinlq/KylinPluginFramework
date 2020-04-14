INCLUDEPATH +=$$PWD/
INCLUDEPATH +=$$PWD/includ/
INCLUDEPATH +=$$PWD/includ/Kpf

CONFIG	+=MinGW

CONFIG(debug, debug|release):{
        FILE_POSTFIX = d
        DIR_COMPILEMODE = Debug
}
else:CONFIG(release, debug|release):{
        FILE_POSTFIX =
        DIR_COMPILEMODE = Release
}

win32:{
        CONFIG(MinGW, MinGW|MSVC):{
                DIR_COMPILER = MinGW
                FILE_LIB_PREFIX = lib
                FILE_LIB_EXT = .a
        }
        else:CONFIG(MSVC, MinGW|MSVC):{
                DIR_COMPILER = MSVC
                FILE_LIB_PREFIX =
                FILE_LIB_EXT = .lib
        }

        DIR_PLATFORM = Win32
        FILE_DLL_PREFIX =
        FILE_DLL_EXT = .dll

        DESTDIR	= $$PWD/bin/$${DIR_PLATFORM}/$${DIR_COMPILER}/$${DIR_COMPILEMODE}/
}

PLUGIN_DIR = $${DESTDIR}/plugins

message($${DESTDIR}/)

LIBS += -L$${DESTDIR}/ -lKPF$${FILE_POSTFIX}
