//
//  TabBarView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 17.01.2023.
//

import SwiftUI

struct TabBarViews: View {
    @State var selectedIndex = 0
    
    let icons = [
    "home",
    "popular",
    "forum",
    "mycases",
    "myroom",
    "marketplace",
    ]
    
    let iconsFill = [
    "home.fill",
    "popular.fill",
    "forum.fill",
    "mycases.fill",
    "myroom.fill",
    "marketplace.fill",
    ]
    
    var body: some View {
        
        VStack{
            ZStack{
                switch selectedIndex {
                case 0:
                    NavigationView{
                        VStack{
                            withAnimation(.spring()){
                                Home()
                            }
                        }
                    }
                case 1:
                    NavigationView{
                        VStack{
                            withAnimation(.spring()){
                                PopularView()
                            }
                        }
                    }
                case 2:
                    NavigationView{
                        VStack{
                            withAnimation(.spring()){
                                ForumView()
                            }
                        }
                    }
                case 3:
                    NavigationView{
                        VStack{
                            withAnimation(.spring()){
                                MyCasesView()
                            }
                        }
                    }
                case 4:
                    NavigationView{
                        VStack{
                            withAnimation(.spring()){
                                MyRoomView()
                            }
                        }
                    }
                case 5:
                    NavigationView{
                        VStack{
                            withAnimation(.spring()){
                                Marketplace()
                            }
                        }
                    }
                    
                default:
                    NavigationView{
                        VStack{
                            withAnimation(.spring()){
                                Home()
                            }
                        }
                    }
                }
            }
            
            Spacer()
            
            HStack{
                ForEach(0..<6, id: \.self) { number in
                    Spacer()
                    Button {
                        withAnimation(.easeInOut(duration: 0.1)){
                            self.selectedIndex = number
                        }
                    } label: {
                        if selectedIndex == number {
                            Image(iconsFill[number])
                                .scaleEffect(1.1)
                                .frame(width: 25, height: 25)
                        } else{
                            Image(icons[number])
                                .scaleEffect(1.0)
                                .frame(width: 25, height: 25)
                        }
                    }
                    Spacer()

                }
            }
            .offset(y: 10)
            .shadow(color: .black.opacity(0.15), radius: 20)
        }
    }
}

struct TabBarViews_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViews()
    }
}
