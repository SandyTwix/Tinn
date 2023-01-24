//
//  Home.swift
//  Tinn
//
//  Created by Руслан Трищенков on 11.01.2023.
//

import SwiftUI

struct Home: View {
    @State var indexBar = 0
    @StateObject var player = VideoPlayerViewModel()
    @GestureState var gestureOffset: CGFloat = 0
    var video: Video = Video(image: "video", title: "Some Video")
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottom){
                VStack(spacing: 0){
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0){
                            Text("Рекомендуемое")
                                .font(.custom("CenturyGothic", size: 18))
                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 0))
                            
                            VStack(spacing: 0){

                                VideoCard()
                                    .onTapGesture {
                                    withAnimation {
                                        player.showPlayer.toggle()
                                    }
                                }

                                VideoCard()
                                    .onTapGesture {
                                    withAnimation {
                                        player.showPlayer.toggle()
                                    }
                                }
                                
                                VideoCard()
                                    .onTapGesture {
                                    withAnimation {
                                        player.showPlayer.toggle()
                                    }
                                }
                                
                                VideoCard()
                                    .onTapGesture {
                                    withAnimation {
                                        player.showPlayer.toggle()
                                    }
                                }
                                
                                VideoCard()
                                    .onTapGesture {
                                    withAnimation {
                                        player.showPlayer.toggle()
                                    }
                                }
                                
                                VideoCard()
                                    .onTapGesture {
                                    withAnimation {
                                        player.showPlayer.toggle()
                                    }
                                }
                                
                                VideoCard()
                                    .onTapGesture {
                                    withAnimation {
                                        player.showPlayer.toggle()
                                    }
                                }
                            }//VStack
                            Spacer()
                        }//VStack
                    }//ScrollView
                    //ScrollView
                    .refreshable {
                        // Обновнять видео через API, когда его сделают
                    }
                    
                }//VStack
                
                if player.showPlayer{
                    MiniPlayer()
                        //.frame(alignment: .top)
                        .transition(.move(edge: .bottom))
                        .offset(y: player.offset)
                        .gesture(DragGesture().updating($gestureOffset, body: { value, state, _ in
                            state = value.translation.height
                        })
                        .onEnded(onEnd(value:)))
                }
            }//ZStack
            .background(Color(red: 0.98, green: 0.988, blue: 1).edgesIgnoringSafeArea(.all))
            .onChange(of: gestureOffset) { value in
                onChanged()
            }
            .environmentObject(player)
        }//NavigationView
        .padding(.top, 30)
        .overlay(alignment: .top) {
            if !player.showPlayer{
                HeaderView()
                    .shadow(color: .black.opacity(0.15), radius: 20)
            }
        }
    }
    
    func onChanged(){
        
        if gestureOffset > 0 && !player.isMiniPlayer && player.offset + 70 <= player.height{
            player.offset = gestureOffset
            
        }
    }
    
    func onEnd(value: DragGesture.Value){
        withAnimation(.default){
            if !player.isMiniPlayer{
                
                player.offset = 0
                
                if value.translation.height > UIScreen.main.bounds.height / 3{
                    
                    player.isMiniPlayer = true
                } else {
                    player.isMiniPlayer = false
                }
            }
        }
    }
    
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
