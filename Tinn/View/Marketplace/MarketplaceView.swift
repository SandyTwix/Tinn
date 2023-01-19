//
//  MarketplaceView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 17.01.2023.
//

import SwiftUI

struct MarketplaceView: View {
    @State var selectedIndex = 0
    
    let tabs = [
        "my room".uppercased(),
        "плейлисты".uppercased(),
        "подписки".uppercased(),
        "о канале".uppercased(),
    ]
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    HeaderView()
                        .shadow(color: .black.opacity(0.2), radius: 20)
                    
                    ScrollView{
                        ZStack{
                            VStack(spacing: 0) {
                                Image("HeaderBackground")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 230)
                            }
                            
                            Button {
                                
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 4)
                                        .fill(Color(red: 0, green: 0, blue: 0).opacity(0.5))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14))
                                }
                            }//Button
                            .offset(x: 170, y: 75)
                        }//ZStack
                        VStack(spacing: 0){
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(.white)
                                    .frame(width: 400,height: UIScreen.main.bounds.height)
                                    .offset(y: -25)
                                
                                HStack(spacing: 10) {
                                    
                                    Image("avatar")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 60, height: 60)
                                        .clipShape(Circle())
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Sandy Twix")
                                        
                                        Text("0 видео | 0 подписчиков")
                                    }
                                }
                                .padding(.bottom, 730)
                                .padding(.trailing, 90)
                                
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
                                                                .frame(width: 85)
                                                            
                                                            Rectangle()
                                                                .fill(Color.black)
                                                                .frame(width: 85, height: 2)
                                                        }
                                                    } else {
                                                        Text(tabs[tab])
                                                    }
                                                }
                                                .foregroundColor(.black)
                                                .font(.custom("CenturyGothic-Bold", size: 14))
                                            }
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 40)
                        }//ZStack
                    }//VStack
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
                }//ScrollView
                .refreshable {}
                .shadow(color: .black.opacity(0.2), radius: 20)
            }//VStack
        }//ZStack
    }//NavigationView
}

struct MarketplaceView_Previews: PreviewProvider {
    static var previews: some View {
        MarketplaceView()
    }
}

struct TabBarView: View {
    var body: some View{
        ScrollView{
            HStack(spacing: 20){
                
            }
        }
    }
}

struct TabBarItem: View {
    @Binding var currentTab: Int
    var tabBarItemName: String
    var tab: Int
    
    var body: some View{
        Button {
            self.currentTab = tab
        } label: {
            VStack(spacing: 0) {
                Spacer()
                Text(tabBarItemName)
            }
        }
    }
}
