//
//  Marketplace.swift
//  Tinn
//
//  Created by Руслан Трищенков on 18.01.2023.
//

import SwiftUI

struct Marketplace: View {
    
    @State var selectedIndex = 0
    
    let tabs = [
        "my room".uppercased(),
        "плейлисты".uppercased(),
        "подписки".uppercased(),
        "о канале".uppercased(),
    ]
    
    var body: some View {
        ZStack{
            VStack{
                HeaderView()
                ZStack{
                    Image("HeaderBackground")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                    ZStack{
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.black)
                            .frame(width: 30, height: 30)
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 14).bold())
                    }
                    .offset(x: 165, y: 45)
                    .onTapGesture {
                        // Изменение фоновой картинки
                    }
                    

                    
                }
                
                ZStack{
                
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(height: 60)
                        .padding(.top, -70)
                    HStack{
                        Image("avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                        
                        VStack(alignment: .leading){
                            Text("SandyTwix")
                                .font(.custom("Nunito", size: 24))
                                .foregroundColor(Color.black)
                            Text("0 видео | 0 подписчиков")
                                .font(.custom("Nunito", size: 14))
                        }
                        
                        Spacer()
                    }//HStack
                    .padding(.horizontal, 20)
                    .offset(y: -20)
                }//ZStack
                
                VStack(spacing: 0) {
                    HStack(spacing: 15) {
                        ForEach(0..<tabs.count, id: \.self) {tab in
                            VStack(spacing: 0) {
                                Button {
                                    withAnimation(.easeInOut(duration: 0.1)){
                                        self.selectedIndex = tab
                                    }
                                } label: {
                                    if selectedIndex == tab {
                                        VStack(spacing: 2){
                                            Text(tabs[tab])
                                                .font(.custom("CenturyGothic-Bold", size: 14))
                                            //.frame(width: 85)
                                            
                                            Rectangle()
                                                .fill(Color.black)
                                                .frame(width: 85, height: 2)
                                        }
                                    } else {
                                        Text(tabs[tab])
                                            .font(.custom("CenturyGothic", size: 14))
                                    }
                                }
                                .foregroundColor(.black)
                                .font(.custom("CenturyGothic-Bold", size: 14))
                            }
                        }
                    }
                }
                
                ZStack{
                    switch selectedIndex {
                    case 0:
                        NavigationView{
                            VStack{
                                MyRoom()
                            }
                        }
                    case 1:
                        NavigationView{
                            VStack{
                                Second()
                            }
                        }
                    case 2:
                        NavigationView{
                            VStack{
                                Therd()
                            }
                        }
                    case 3:
                        NavigationView{
                            VStack{
                                Fours()
                            }
                        }
                        
                    default:
                        NavigationView{
                            VStack{
                                All()
                            }
                        }
                    }
                }
                .padding(.bottom, 150)
            }//VStack
        }//ZStack
    }
}

struct Marketplace_Previews: PreviewProvider {
    static var previews: some View {
        Marketplace()
    }
}
