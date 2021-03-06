import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 960
    height: 480
    Rectangle{
        anchors.fill: parent
        color: "black"
        Image {
            id: source
            anchors.fill: parent
            visible: false
            fillMode: Image.PreserveAspectFit
            source: "pic.png"
        }
        Canvas{
            anchors.fill: parent
            onPaint: {
                var ctx = getContext("2d")
                ctx.drawImage(source, source.x, source.y, source.width, source.height)
            }
        }
    }
}
