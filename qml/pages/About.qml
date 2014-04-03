import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page
    SilicaFlickable {
        id: aboutPage
        anchors.fill: parent

        contentHeight: column.height
        Column {
            id: column
            width: aboutPage.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: "O aplaikaciji"
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: appIcon
                    source: "qrc:/image/Pakao.png"
                }
            }
            Label {
                anchors.margins: Theme.paddingMedium
                text: "Aplikacija za radio pakao iz Banja Luke"
            }
            Label {
                anchors.margins: Theme.paddingMedium
                text: "Autor: Bojan Kostic blood9raven@gmail.com"
            }
        }

    }
}





