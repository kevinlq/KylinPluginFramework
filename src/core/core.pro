#-------------------------------------------------
#
# Project created by QtCreator 2018-06-01T12:38:36
#
#-------------------------------------------------
include($$PWD/../kpfPlugin.pri)

QT       += core gui xml
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = KPF$${FILE_POSTFIX}

TEMPLATE = lib
CONFIG += c++11

DEFINES += KPF_LIBRARY


INCLUDEPATH += $$PWD/../../include

HEADERS += \
    $$PWD/../../include/Kpf/Common.h \
    $$PWD/../../include/Kpf/Constants.h \
    $$PWD/../../include/Kpf/InvokeHelper.h \
    $$PWD/../../include/Kpf/Connection.h \
    $$PWD/../../include/Kpf/Event.h \
    $$PWD/../../include/Kpf/Topic.h \
    $$PWD/../../include/Kpf/Thread.h \
    $$PWD/../../include/Kpf/Object.h \
    $$PWD/../../include/Kpf/Class.h \
    $$PWD/../../include/Kpf/KpfCore.h \
    $$PWD/../../include/Kpf/EventHelper.h \
    $$PWD/../../include/Kpf/Kpf.h \
    $$PWD/SignalSpy.h \
    $$PWD/ClassImpl.h \
    $$PWD/ThreadImpl.h \
    $$PWD/ObjectImpl.h \
    $$PWD/EventImpl.h \
    $$PWD/TopicImpl.h \
    $$PWD/EventBus.h \
    $$PWD/KpfCoreImpl.h \
    $$PWD/KpfLogPrivate.h \
    $$PWD/KWidgets.h \
    $$PWD/KpfPrivate.h \
    $$PWD/InvokeHelperPrivate.h \
    $$PWD/CommonPrivate.h \
    $$PWD/ConnectionImpl.h \
    $$PWD/Library.h \
    $$PWD/RegisterQtClasses.h

SOURCES += \
    $$PWD/CommonPrivate.cpp \
    $$PWD/InvokeHelper.cpp \
    $$PWD/SignalSpy.cpp \
    $$PWD/Class.cpp \
    $$PWD/Thread.cpp \
    $$PWD/Object.cpp \
    $$PWD/Event.cpp \
    $$PWD/Topic.cpp \
    $$PWD/EventBus.cpp \
    $$PWD/Connection.cpp \
    $$PWD/KpfCore.cpp \
    $$PWD/KpfLog.cpp \
    $$PWD/KWidgets.cpp \
    $$PWD/Library.cpp


include(CoreDump/CoreDump.pri)

DEFINES += LOG4QT_STATIC
include(../../log4qt/src/log4qt.pri)

