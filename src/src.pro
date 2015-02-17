#-------------------------------------------------
#
# Project created by QtCreator 2014-10-08T10:31:26
#
#-------------------------------------------------

TARGET = opencvblobs
TEMPLATE = lib
CONFIG += warn_on
DESTDIR = ../

QMAKE_CXXFLAGS += -std=c++11

HEADERS += \
    ComponentLabeling.h \
    BlobResult.h \
    BlobOperators.h \
    BlobLibraryConfiguration.h \
    blob.h \
    BlobContour.h

SOURCES += \
    ComponentLabeling.cpp \
    BlobResult.cpp \
    BlobOperators.cpp \
    blob.cpp \
    BlobContour.cpp

