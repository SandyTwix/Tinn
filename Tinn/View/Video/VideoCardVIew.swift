//
//  VideoCardVIew.swift
//  Tinn
//
//  Created by Руслан Трищенков on 17.01.2023.
//

import SwiftUI

struct VideoCardVIew: View {
    var video: Video
    var body: some View {
        VStack(spacing: 10) {
            Image(video.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 190)
            
        }
    }
}

struct VideoCardVIew_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
