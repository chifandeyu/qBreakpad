TEMPLATE = app
TARGET = test

QT += core network
QT -= gui

CONFIG -= app_bundle
#CONFIG += debug_and_release warn_on
CONFIG += thread exceptions rtti stl

CONFIG += force_debug_info

QMAKE_CFLAGS_RELEASE += -g
QMAKE_CXXFLAGS_RELEASE += -g

# without c++11 & AppKit library compiler can't solve address for symbols
CONFIG += c++11
macx: LIBS += -framework AppKit

# link qBreakpad library
include($$PWD/../../qBreakpad.pri)
QMAKE_LIBDIR += $$PWD/../../handler
LIBS += -lqBreakpad

HEADERS += $$PWD/TestThread.h
SOURCES += $$PWD/TestThread.cpp

SOURCES += $$PWD/main.cpp

OBJECTS_DIR = _build/obj
MOC_DIR = _build
