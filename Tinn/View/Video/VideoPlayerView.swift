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
        let url = "https://www.youtube.com/watch?v=3oyvGa7os5Q"
        
        // Player
        let mailPlayer = AVPlayer(url: URL(string: url)!)
        
        controller.player = mailPlayer
        
        //Hiding Controls
        controller.showsPlaybackControls = false
        controller.videoGravity = .resizeAspectFill
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

