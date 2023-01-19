//
//  VideoPlayerView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        
        // Video URL
        let video_url = URL(string: "https://www.youtube.com/watch?v=LXb3EKWsInQ&t=101s")
        
        // Player
        let player = AVPlayer(url: video_url!)
        
        controller.player = player
        
        //Hiding Controls
        controller.showsPlaybackControls = false
        controller.player?.play()
        controller.videoGravity = .resizeAspectFill
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

