TEMPLATE = lib

QT -= gui

CONFIG += staticlib

INCLUDEPATH += include

SOURCES += \
    source/application-cpp.cpp \
    source/gui.cpp

HEADERS += \
    include/application-cpp/application-cpp.h \
    include/application-cpp/gui.h

unix: QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage -O0

include(../common.pri)
include(../messenger/messenger.pri)

