import QtQuick

Image {
    id: splashImage
    anchors.fill: parent
    fillMode: Image.PreserveAspectCrop

    readonly property var videoSets: [
        { folder: "images/vid1", totalFrames: 94 },
        { folder: "images/vid2", totalFrames: 65 },
        { folder: "images/vid3", totalFrames: 50 }
    ]

    readonly property var set: videoSets[Math.floor(Math.random() * videoSets.length)]
    property int currentFrame: 1

    source: set.folder + "/frame-" + String(currentFrame).padStart(3, '0') + ".png"

    NumberAnimation on currentFrame {
        from: 1
        to: splashImage.set.totalFrames
        duration: (splashImage.set.totalFrames / 30) * 1000
        loops: Animation.Infinite
    }
}
