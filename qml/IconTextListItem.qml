import QtQuick 2.0
import Sailfish.Silica 1.0

import "harbour"

BackgroundItem {
    property alias icon: icon
    property alias text: label.text
    property alias font: label.font
    property int iconSize: Theme.iconSizeMedium

    Row {
        x: Theme.horizontalPageMargin
        width: parent.width - 2 * x
        anchors.verticalCenter: parent.verticalCenter
        spacing: Theme.paddingMedium

        HarbourHighlightIcon {
            id: icon

            anchors.verticalCenter: parent.verticalCenter
            sourceSize.height: iconSize
            smooth: true
            highlightColor: label.color
        }

        Label {
            id: label

            anchors.verticalCenter: parent.verticalCenter
            width: parent.width - x
            color: highlighted ? Theme.highlightColor : Theme.primaryColor
            truncationMode: TruncationMode.Fade
            textFormat: Text.PlainText
        }
    }
}
