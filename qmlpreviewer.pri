SOURCES += $$PWD/qmlpreviewer.cpp
HEADERS += $$PWD/qmlpreviewer.h

INCLUDEPATH += $$PWD
RESOURCES += \
    $$PWD/qmlpreviewer.qrc

RESOURCES_ABSOLUTE =
for(qrc_file, RESOURCES) {
    RESOURCES_ABSOLUTE += "$$absolute_path($$qrc_file, $$_PRO_FILE_PWD_)\\"
}
RESOURCES_ABSOLUTE += "__end__"

DEFINES += "QMLPREVIEWER_RESOURCES=\\\"$$RESOURCES_ABSOLUTE\\\""
