#-------------------------------------------------
#
# Project created by QtCreator 2018-06-01T15:45:14
#
#-------------------------------------------------
include($$PWD/../../../Kpf.pri)

QT       += core gui xml
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = lib
CONFIG += c++11

DEFINES += TEST_LIBRARY

TARGET = Test$${FILE_POSTFIX}

DESTDIR = $${PLUGIN_DIR}


INCLUDEPATH +=$$PWD/../../../include

SOURCES += \
    Test.cpp

HEADERS += \
    Test.h

#DISTFILES += \
#    $$PWD/../../../bin/components/test.json

