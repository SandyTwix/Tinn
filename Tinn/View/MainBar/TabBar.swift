//
//  TabBar.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import SwiftUI

struct TabBar: View {
    @Binding var index: Int
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack(spacing: 0){
                    HStack(spacing: 35) {
                        NavigationLink {
                            Home()
                        } label: {
                            VStack(spacing: 5){
                                Image(self.index == 0 ? "home.fill" : "home")
                                    .frame(width: 25, height: 25)
                            }
                        }
                        .offset(y: 15)
                        
                        NavigationLink {
                            Home()
                        } label: {
                            VStack(spacing: 5){
                                Image(self.index == 1 ? "popular.fill" : "popular")
                                    .frame(width: 25, height: 25)
                            }
                        }
                        .offset(y: 15)

                        NavigationLink {
                            Home()
                        } label: {
                            VStack(spacing: 5){
                                Image(self.index == 2 ? "forum.fill" : "forum")
                                    .frame(width: 25, height: 25)
                            }
                        }
                        .offset(y: 15)
                        
                        NavigationLink {
                            Home()
                        } label: {
                            VStack(spacing: 5){
                                Image(self.index == 3 ? "mycases.fill" : "mycases")
                                    .frame(width: 25, height: 25)
                            }
                        }
                        .offset(y: 15)
                        
                        NavigationLink {
                            Home()
                        } label: {
                            VStack(spacing: 5){
                                Image(self.index == 4 ? "myroom.fill" : "myroom")
                                    .frame(width: 25, height: 25)
                            }
                        }
                        .offset(y: 15)
                        
                        NavigationLink {
                            Marketplace()
                        } label: {
                            VStack(spacing: 5){
                                Image(self.index == 5 ? "marketplace.fill" : "marketplace")
                                    .frame(width: 25, height: 25)
                            }
                        }
                        .offset(y: 15)
                    }//HStack
                    .frame(width: .infinity, height: 40)
                    .padding(.horizontal, 25)
                }//VStack
                .background(Color.white)
            }
        }//ZStack
    }
}

