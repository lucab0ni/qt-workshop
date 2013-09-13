TEMPLATE = lib

QT -= gui
QT += qml quick

CONFIG += staticlib

INCLUDEPATH += include

SOURCES += \
    source/application-qml.cpp \

HEADERS += \
    include/application-qml/application-qml.h \

OTHER_FILES += \
    qml/main.qml \
    qml/Button.qml \
    qml/SendMessage.qml

RESOURCES += \
    application-qml.qrc

unix: QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage -O0

include(../common.pri)
include(../messenger/messenger.pri)

