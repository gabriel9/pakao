# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = Pakao

CONFIG += sailfishapp

SOURCES += src/Pakao.cpp

OTHER_FILES += qml/Pakao.qml \
    qml/cover/CoverPage.qml \
    rpm/Pakao.spec \
    rpm/Pakao.yaml \
    Pakao.desktop \
    qml/pages/About.qml \
    qml/pages/Radio.qml

