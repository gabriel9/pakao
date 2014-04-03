import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.0

Page {
    id: radioPage


    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: "About"
                onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
            }
        }

        contentHeight: column.height

        Column {
            id: column

            width: radioPage.width
            spacing: Theme.paddingLarge
            PageHeader {
                id: pageheaderLabel
                title: "Pakao Radio"
            }
            Item {
                width: parent.width
                height: childrenRect.height
                x: Theme.paddingLarge
                Image {
                    id: pentagram
                    source: "qrc:/image/pentagram.svg"
                    sourceSize.width: column.width - Theme.paddingLarge * 2
                    sourceSize.height: column.height
                    fillMode: Image.PreserveAspectFit
                    IconButton {
                        id: playButton
                        icon.source: (playMusic.playbackState == Audio.PlayingState) ? "image://theme/icon-l-pause" : "image://theme/icon-l-play"
                        onClicked: (playMusic.playbackState == Audio.PlayingState) ? playMusic.pause() : playMusic.play()
                        anchors.top: parent.verticalCenter
                        anchors.topMargin: -20
                        anchors.horizontalCenter: parent.horizontalCenter
                        y: 20
                    }
                }
                ProgressBar {
                    maximumValue: 10
                    minimumValue: 0
                    value: playMusic.bufferProgress * 10
                    label: "Buffer"
                    width: pentagram.width
                    anchors.top: pentagram.bottom
                    anchors.topMargin: 200
                }
            }

            Audio {
                id: playMusic
                source: "http://andol3x1.dyndns.org:8000/live"
                autoLoad: false
            }
        }
    }

    function play() {
        playMusic.play();
    }

    function stop() {
        playMusic.pause();
    }
}
