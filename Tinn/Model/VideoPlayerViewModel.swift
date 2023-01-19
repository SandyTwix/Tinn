//
//  VideoPlayerViewModel.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import SwiftUI

class VideoPlayerViewModel: ObservableObject {
    
    // Miniplayer Properties
    @Published var showPlayer = false
    
    // Gesture Offset
    @Published var offset:CGFloat = 0
    @Published var width: CGFloat = UIScreen.main.bounds.width
    @Published var height: CGFloat = 0
    @Published var isMiniPlayer = false
}
