HEADERS += $$PWD/QmlPreviewer

ios|android|winrt {
    HEADERS += $$PWD/qmlpreviewer_stub.h
} else {
    HEADERS += $$PWD/qmlpreviewer.h
    SOURCES += $$PWD/qmlpreviewer.cpp
}

INCLUDEPATH += $$PWD
RESOURCES += \
    $$PWD/qmlpreviewer.qrc

RESOURCES_ABSOLUTE =
for(qrc_file, RESOURCES) {
    RESOURCES_ABSOLUTE += "$$absolute_path($$qrc_file, $$_PRO_FILE_PWD_)"
}

#win32 {
#    DEFINES += "QMLPREVIEWER_RESOURCES=\"$$RESOURCES_ABSOLUTE\""
#} else {
#    DEFINES += "QMLPREVIEWER_RESOURCES=\\\"$$RESOURCES_ABSOLUTE\\\""
#}

DEFINES += "QMLPREVIEWER_RESOURCES=\"\\\"$$RESOURCES_ABSOLUTE\\\"\""
