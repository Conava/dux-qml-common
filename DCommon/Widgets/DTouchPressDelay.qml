import QtQuick
import "ScrollConstants.js" as Scroll

// Parent it to the scroll container, above the content: Qt visits the topmost item first, so the delay is set before the container filters the press.
Item {
    readonly property int pressDelay: touch.active ? Scroll.tapTimeout : 0

    anchors.fill: parent
    z: 1

    PointHandler {
        id: touch
        acceptedDevices: PointerDevice.TouchScreen
    }
}
