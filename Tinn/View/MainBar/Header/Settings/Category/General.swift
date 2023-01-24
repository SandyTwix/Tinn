//
//  General.swift
//  Tinn
//
//  Created by Руслан Трищенков on 20.01.2023.
//

import SwiftUI

struct General: View {
    @State var showPopularBlock = false
    @State var showRecomendationBlock = false
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color.white)
                    .shadow(color: .gray.opacity(0.4), radius: 4)
                    .frame(height: 740)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 10)
                    .padding(.top, 20)
                ScrollView{
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .leading) {
                            
                            VStack(alignment: .leading) {
                                HStack{
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Тема")
                                            .font(.custom("Nunito", size: 13))
                                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0))
                                        
                                    }
                                    .padding(.top, 20)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0){
                                        Menu("Светлая") {
                                            Button {
                                                
                                            } label: {
                                                Text("Светлая")
                                            }
                                            Button {
                                                
                                            } label: {
                                                Text("Темная")
                                            }
                                            
                                        }
                                        .font(.custom("Nunito", size: 13))
                                        .underline()
                                        .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0))
                                        
                                    }
                                    .padding(.top, 20)
                                    
                                    Spacer()
                                }
                            }
                            Divider().padding(.horizontal, 20)
                        }
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                HStack(spacing: 0){
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Настройки контента")
                                            .frame(width: 80)
                                            .font(.custom("Nunito", size: 13))
                                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0))
                                        
                                    }
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0){
                                        HStack(spacing: 0){
                                            Button {
                                                showRecomendationBlock.toggle()
                                            } label: {
                                                if showRecomendationBlock{
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 4)
                                                            .fill(Color.blue)
                                                            .frame(width: 15, height: 15)
                                                        Image(systemName: "checkmark")
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 8))
                                                    }
                                                } else {
                                                    RoundedRectangle(cornerRadius: 4)
                                                        .stroke(style: .init(lineWidth: 1))
                                                        .frame(width: 15, height: 15)
                                                        .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                                                }
                                            }
                                            
                                            Text("Показывать блок “Рекомендуемые”")
                                                .font(.custom("Nunito", size: 13))
                                                .frame(width: 110, height: 40)
                                                .padding(EdgeInsets(top: 25, leading: 30, bottom: 5, trailing: 0))
                                        }
                                        Spacer()
                                        HStack(spacing: 0){
                                            Button {
                                                showPopularBlock.toggle()
                                            } label: {
                                                if showPopularBlock{
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 4)
                                                            .fill(Color.blue)
                                                            .frame(width: 15, height: 15)
                                                        Image(systemName: "checkmark")
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 8))
                                                    }
                                                } else {
                                                    RoundedRectangle(cornerRadius: 4)
                                                        .stroke(style: .init(lineWidth: 1))
                                                        .frame(width: 15, height: 15)
                                                        .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                                                }
                                            }
                                            
                                            Text("Показывать блок “Популярное”")
                                                .font(.custom("Nunito", size: 13))
                                                .frame(width: 110, height: 40)
                                                .padding(EdgeInsets(top: 5, leading: 30, bottom: 20, trailing: 0))
                                        }
                                        .frame(height: 60)
                                    }
                                    
                                    Spacer()
                                }
                            }
                            Divider().padding(.horizontal, 20)
                        }
                        .frame(height: 155)
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                HStack{
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Электронная почта")
                                            .frame(width: 80)
                                            .font(.custom("Nunito", size: 13))
                                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0))
                                        
                                    }
                                    Spacer()
                                    
                                    VStack(alignment: .leading, spacing: 0){
                                        ScrollView(.horizontal, showsIndicators: false){
                                            Text("ggobdin1@gmail.com")
                                            
                                                .font(.custom("Nunito", size: 13))
                                            
                                        }
                                        .frame(width: 80)
                                        .padding(EdgeInsets(top: 25, leading: 20, bottom: 20, trailing: 10))
                                    }
                                    Spacer()
                                    
                                    VStack(alignment: .leading, spacing: 0){
                                        Button(action: {
                                            
                                        }, label: {
                                            Text("Изменить")
                                                .font(.custom("Nunito", size: 13))
                                                .underline()
                                        })
                                        .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0))
                                        
                                    }
                                    
                                    Spacer()
                                }
                            }
                            Divider().padding(.horizontal, 20)
                        }
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                HStack{
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Телефон")
                                            .frame(width: 60)
                                            .font(.custom("Nunito", size: 13))
                                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 10))
                                        
                                    }
                                    Spacer()
                                    
                                    VStack(alignment: .leading, spacing: 0){
                                        ScrollView(.horizontal, showsIndicators: false){
                                            Text("+79*********")
                                                .font(.custom("Nunito", size: 13))
                                        }
                                        .frame(width: 80)
                                        .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 10))
                                        
                                    }
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0){
                                        Button(action: {
                                            
                                        }, label: {
                                            Text("Изменить")
                                                .font(.custom("Nunito", size: 13))
                                                .underline()
                                        })
                                        .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0))
                                        
                                    }
                                    
                                    Spacer()
                                }
                            }
                            Divider().padding(.horizontal, 20)
                        }
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                HStack{
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Адрес профиля")
                                            .frame(width: 60)
                                            .font(.custom("Nunito", size: 13))
                                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 10))
                                        
                                    }
                                    Spacer()
                                    
                                    VStack(alignment: .leading, spacing: 0){
                                        ScrollView(.horizontal, showsIndicators: false){
                                            Text("423fdf234890fsf45r34fdsf34fsdfdsfsdf243fds")
                                                .font(.custom("Nunito", size: 13))
                                        }
                                        .frame(width: 80)
                                        .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 10))
                                        
                                    }
                                    Spacer()
                                    
                                    VStack(alignment: .leading, spacing: 0){
                                        Button(action: {
                                            
                                        }, label: {
                                            Text("Изменить")
                                                .font(.custom("Nunito", size: 13))
                                                .underline()
                                        })
                                        .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0))
                                        
                                    }
                                    
                                    Spacer()
                                }
                            }
                            Divider().padding(.horizontal, 20)
                        }
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                HStack{
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Язык")
                                            .frame(width: 60)
                                            .font(.custom("Nunito", size: 13))
                                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 10))
                                        
                                    }
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Русский")
                                            .font(.custom("Nunito", size: 13))
                                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 40))
                                    }
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0){
                                        Menu("Изменить") {
                                            Button {
                                                
                                            } label: {
                                                Text("Русский")
                                            }
                                            Button {
                                                
                                            } label: {
                                                Text("Английский")
                                            }
                                            Button {
                                                
                                            } label: {
                                                Text("Казахский")
                                            }
                                            Button {
                                                
                                            } label: {
                                                Text("Китайский")
                                            }
                                            
                                        }
                                        .font(.custom("Nunito", size: 13))
                                        .underline()
                                        .padding(EdgeInsets(top: 25, leading: 30, bottom: 20, trailing: 0))
                                        
                                    }
                                    Spacer()
                                    
                                }
                            }
                        }
                    }
                    
                    VStack{
                        Spacer()
                        Text("Вы можете ")
                            .font(.custom("Nunito", size: 13))
                            .foregroundColor(.black)
                        + Text("удалить ")
                            .foregroundColor(.red)
                            .font(.custom("Nunito", size: 13))
                        + Text("свой акаунт")
                            .font(.custom("Nunito", size: 13))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.top, 100)
                }
            }
        }
        .background(Color(red: 0.98, green: 0.988, blue: 1).edgesIgnoringSafeArea(.all))
    }
}

struct General_Previews: PreviewProvider {
    static var previews: some View {
        General()
    }
}
