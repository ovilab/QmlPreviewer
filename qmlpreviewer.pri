SOURCES += $$PWD/qmlpreviewer.cpp
HEADERS += $$PWD/qmlpreviewer.h

INCLUDEPATH += $$PWD
RESOURCES += \
    $$PWD/qmlpreviewer.qrc

DISTFILES += \
    $$PWD/qtquickcontrols2.conf

RESOURCES_ABSOLUTE =
message("---- begin ----")
for(qrc_file, RESOURCES) {
    RESOURCES_ABSOLUTE += "$$absolute_path($$qrc_file, $$_PRO_FILE_PWD_)\\"
}
RESOURCES_ABSOLUTE += "__end__"
message("---- end ----")

DEFINES += "QMLPREVIEWER_RESOURCES=\\\"$$RESOURCES_ABSOLUTE\\\""
