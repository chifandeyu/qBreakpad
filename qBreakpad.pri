message("BREAKPAD_crash_handler_attached")

INCLUDEPATH += $$PWD/handler/

HEADERS += \
    $$PWD/handler/QBreakpadHandler.h \
    $$PWD/handler/QBreakpadHttpUploader.h

CONFIG(release, debug|release): {
LIBS += \
    -L$$PWD/handler/lib/release -lqBreakpad
} else {
LIBS += \
    -L$$PWD/handler/lib/debug -lqBreakpad
}
