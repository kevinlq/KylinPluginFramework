#-------------------------------------------------
#
# Project created by QtCreator 2018-06-01T20:31:10
#
#-------------------------------------------------

include($$PWD/../../Kpf.pri)

QT       += core gui xml
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app
CONFIG += c++11

TARGET = app$${FILE_POSTFIX}


INCLUDEPATH +=$$PWD/../../include

HEADERS += \
    KWidget.h

SOURCES += \
    KWidget.cpp \
    main.cpp


