######################################################################
# Automatically generated by qmake (3.1) Wed Oct 10 12:02:15 2018
######################################################################

QT+=widgets core gui
TEMPLATE = app
TARGET = RtspMonitor

OPENCV_PATH = /usr/accel/cv
FFMPEG_PATH = /usr/accel/ffmpeg
LIVE555_PATH_INCLUDE = /usr/local/include/liveMedia /usr/local/include/UsageEnvironment /usr/local/include/BasicUsageEnvironment /usr/local/include/groupsock
LIVE555_PATH_LIB = /usr/local/lib

INCLUDEPATH += . $${OPENCV_PATH}/include \
                $${FFMPEG_PATH}/include \
                $${LIVE555_PATH_INCLUDE}

# The following define makes your compiler warn you if you use any
# feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Input
HEADERS += configuredlg.h \
           monitorwindow.h \
           monitorwindowmanager.h \
           qffmpeg.h \
           rtspdialog.h \
           rtspthread.h \
           vlcplayer.h \
    add_rtsp_url.h
FORMS += configuredlg.ui rtspdialog.ui vlcplayer.ui \
    add_rtsp_url.ui
SOURCES += configuredlg.cpp \
           main.cpp \
           monitorwindow.cpp \
           monitorwindowmanager.cpp \
           qffmpeg.cpp \
           rtspdialog.cpp \
           rtspthread.cpp \
           vlcplayer.cpp \
    add_rtsp_url.cpp
RESOURCES += vlcplayer.qrc

LIBS += -L$${OPENCV_PATH}/lib -lopencv_core -lopencv_highgui -lopencv_videoio \
        -L$${FFMPEG_PATH}/lib -lavcodec -lavutil -lswscale -lavdevice -lavformat  \
        -L$${LIVE555_PATH_LIB} -lliveMedia -lgroupsock -lBasicUsageEnvironment -lUsageEnvironment


