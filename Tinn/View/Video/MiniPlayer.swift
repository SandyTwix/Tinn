//
//  MiniPlayer.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import SwiftUI

struct MiniPlayer: View {
    //Screen Height
    @EnvironmentObject var player: VideoPlayerViewModel
    @State var comment = ""
    
    var body: some View {
        VStack(spacing: 0) {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .frame(width: 80, height: 5)
                .offset(y: -5)
            // Video Player
            VStack{
                VideoPlayerView()
                    .frame(width: player.isMiniPlayer ? 150 : player.width,height: player.isMiniPlayer ? 70 : getFrame())
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                VideoControls()
            )
            
            
            GeometryReader{ reader in
                ScrollView {
                    VStack(spacing: 18) {
                        
                        // Video Playback Details and Buttons
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Красивые горы")
                                .font(.custom("Nunito", size: 18))
                            
                            Text("244 Просмотра • Январь 16, 2023")
                                .font(.custom("Nunito", size: 14))
                            
                            Divider()
                                .offset(x: -20)
                                .padding(.top, 10)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(spacing: 10){
                            Image("avatar")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("sandytwix")
                                    .font(.custom("Nunito", size: 14))
                                Text("0 подписчиков")
                                    .font(.custom("Nunito", size: 11))
                                    .foregroundColor(.black.opacity(0.5))
                            }
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Text("Подписаться")
                                    .font(.custom("Nanuto", size: 16))
                                    .foregroundColor(.white)
                                    .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                                    .background(Color.blue)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            .offset(x: -40)
                        }
                        
                        HStack(spacing: 0) {
                            PlayBackVideoButton(image: "like")
                            PlayBackVideoButton(image: "money")
                            PlayBackVideoButton(image: "share")
                            PlayBackVideoButton(image: "add")
                        }
                        .offset(x: -20)
                        .padding(.top, 10)
                        
                        Divider()
                            .offset(x: -20)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            HStack(spacing: 0){
                                Text("2 комментария")
                                    .font(.custom("Nunito", size: 16))
                                    .padding(.trailing, 20)
                                
                                Button {
                                    
                                } label: {
                                    HStack(spacing: 0) {
                                        Image("sort")
                                            .frame(width: 20, height: 20)
                                            .padding(.trailing, 5)
                                        Text("Упорядочить")
                                            .font(.custom("Nunito", size: 16))
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            .padding(.trailing, 150)
                            
                            HStack(spacing: 15) {
                                Image("avatar")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)
                                
                                TextField("Оставить комментарий", text: $comment)
                                    .font(.custom("Nunito", size: 16))
                                    .padding(5)
                                    .border(Color.black.opacity(0.3), width: 1)
                                    .padding(.trailing, 40)
                            }
                            
                            Divider()
                                .offset(x: -20)
                        }//VStack
                        HStack{
                            Text("Смотрите также")
                            Spacer()
                        }//HStack
                        
                            .font(.custom("Nunito", size: 16))
                        VStack(spacing: 5){
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                            NavigationLink {
                                MiniPlayer()
                            } label: {
                                VideoCard()
                            }
                        }//VStack
                        .offset(x: -20)
                        
                    }//VStack
                    .padding()
                }//ScrollView
                .onAppear {
                    player.height = reader.frame(in: .global).height + 250
                }
            }
            .opacity(player.isMiniPlayer ? 0 : getOpacity())
            .frame(height: player.isMiniPlayer ? 0 : nil)
        }//VStack
        .background(
            Color.white
                .ignoresSafeArea(.all, edges: .all)
                .onTapGesture {
                    player.width = UIScreen.main.bounds.width
                    player.isMiniPlayer.toggle()
                }
        
        )
    }
    
    // Getting Frame and opacity while deagging
    
    func getFrame() -> CGFloat {
        let progress = player.offset / (player.height - 100)
        
        if (1 - progress) <= 1.0{
            let videoHeight: CGFloat = (1 - progress) * 250
            
            
            if videoHeight <= 70{
                let percent = videoHeight / 70
                let videoWidth: CGFloat = percent * UIScreen.main.bounds.width
                
                DispatchQueue.main.async {
                    if videoWidth >= 150{
                        player.width = videoWidth
                    }
                }
                return 70
            }
            
            DispatchQueue.main.async {
                player.width = UIScreen.main.bounds.width
            }
            
            return videoHeight
        }
        return 250
    }
    
    func getOpacity()->Double{
        let progress = player.offset / (player.height)
        if progress <= 1{
            return Double(1 - progress)
        }
        return 1
    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer().environmentObject(VideoPlayerViewModel())
    }
}

struct PlayBackVideoButton: View {
    var image: String
    var body: some View {
        Button {
            
        } label: {
            Image(image)
        }
        .frame(maxWidth: .infinity)
    }
}

struct VideoControls: View {
    
    @EnvironmentObject var player: VideoPlayerViewModel
    
    var body: some View{
        
        HStack(spacing: 15) {
            
            
            // Video View
            Rectangle()
                .fill(Color.clear)
                .frame(width: 150, height: 70)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Красивые горы")
                    .font(.custom("Nunito", size: 16))
                    .foregroundColor(.black)
                    .lineLimit(1)
                
                Text("SandyTwix")
                    .font(.custom("Nunito", size: 16))
                    .foregroundColor(.black)
                    .lineLimit(1)
            }
            
            Button {
                
            } label: {
                Image(systemName: "pause.fill")
                    .font(.title2.bold())
                    .foregroundColor(.black)
            }
            
            Button {
                withAnimation(.default){
                    player.showPlayer.toggle()
                    player.offset = 0
                    player.isMiniPlayer.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.title2)
                    .foregroundColor(.black)
            }

        }
        .padding(.trailing)
    }
}
