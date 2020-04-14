include($$PWD/../../../Kpf.pri)

QT       += core gui xml
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = lib
CONFIG += c++11
DEFINES += KIMAGEVIEW_LIBRARY

TARGET = KImageView$${FILE_POSTFIX}


DESTDIR = $${PLUGIN_DIR}

INCLUDEPATH +=$$PWD/../../../include

SOURCES += \
    KImageView.cpp

HEADERS += \
    KImageView.h
