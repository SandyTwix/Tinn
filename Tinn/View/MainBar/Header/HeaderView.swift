//
//  HeaderView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import SwiftUI

struct HeaderView: View {
    @State var show = false
    @State var txt = ""
    
    @State var showMenu = false
    
    var body: some View {
            ZStack{
                //Color.red
                HStack(spacing: 0) {
                    if !self.show {
                        Image("BannerLogo")
                            .offset(y: -15)
                    }
                    Spacer()
                    
                    if self.show{
                        VStack(spacing: 0){
                            HStack(spacing: 0){
                                TextField("Поиск", text: self.$txt)
                                    .font(.custom("Nunito", size: 16))
                                    .offset(y: -15)
                                    .padding(.leading, 10)
                                
                                Button {
                                    withAnimation(.spring()) {
                                        self.show.toggle()
                                    }
                                } label: {
                                    Image(systemName: "xmark")
                                        .font(.system(size: 20))
                                        .foregroundColor(.black)
                                }
                                .padding(.trailing, 15)
                                .offset(y: -15)
                                
                                Button {
                                    
                                } label: {
                                    Image("Search")
                                        .offset(y: -15)
                                }
                            }
                            
                            Rectangle()
                                .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                                .frame(width: 330, height: 0.6)
                        }
                        
                    } else {
                        Button {
                            withAnimation(.spring()) {
                                self.show.toggle()
                            }
                        } label: {
                            Image("Search")
                        }
                        .offset(y: -15)
                        .padding(.trailing, 28)
                    }
                
                    if !self.show{
                        VStack{
                            ZStack{
                                Circle()
                                    .foregroundColor(.yellow)
                            }

                                    Image("avatar")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 40, height: 40)
                                        .clipShape(Circle())
                                        .offset(y: -15)
                        }
                    }
                }//HStack
                .frame(height: 40)
                .padding(.horizontal, 25)
                .background(Color.white)
            }//VStack
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
