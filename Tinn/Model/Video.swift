//
//  Video.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import Foundation

// Video Model and Data

struct Video: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
}

var videos = [
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
    Video(image: "video", title: "Some Video with Cool story"),
]
