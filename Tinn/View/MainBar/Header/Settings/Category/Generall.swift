//
//  Generall.swift
//  Tinn
//
//  Created by Руслан Трищенков on 20.01.2023.
//

import SwiftUI

struct Generall: View {
    @State var typeAccountToggle = false
    @State var showRecomendationBlock = false
    @State var showPopularBlock = false
    var body: some View {
        NavigationView {
            VStack{
                Form{
                    HStack{
                        Text("Тема")
                            .font(.custom("Nunito", size: 13))
                        Spacer()
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
                        Spacer()
                    }
                    
                    HStack{
                        Text("Тип аккаунта")
                            .font(.custom("Nunito", size: 13))
                        
                        HStack{
                            
                            Button{
                                typeAccountToggle.toggle()
                            } label: {
                                if typeAccountToggle{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(.blue)
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
                            
                            Text("Создатель контента")
                                .font(.custom("Nunito", size: 13))
                            
                        }
                        .padding(.leading, 62)
                    }
                    
                    HStack{
                        Text("Настройки контента")
                            .font(.custom("Nunito", size: 13))
                            .frame(width: 70)
                        Spacer()
                        VStack{
                            HStack{
                                Button {
                                    showRecomendationBlock.toggle()
                                } label: {
                                    if showRecomendationBlock{
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 4)
                                                .fill(Color.blue)
                                                .frame(width: 15, height: 15)
                                            Image(systemName: "chekmark")
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
                                VStack{
                                    Text("Показывать блок ''Рекомендуемые''")
                                        .font(.custom("Nunito", size: 13))
                                        .frame(width: 110)
                                }
                            }
                            
                            HStack{
                                Button {
                                    showPopularBlock.toggle()
                                } label: {
                                    if showPopularBlock{
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 4)
                                                .fill(Color.blue)
                                                .frame(width: 15, height: 15)
                                            Image(systemName: "chekmark")
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
                                VStack{
                                    Text("Показывать блок ''Популярное''")
                                        .font(.custom("Nunito", size: 13))
                                        .frame(width: 110)
                                }
                            }
                        }
                        .padding(.trailing, 34)
                    }
                    
                    HStack{
                        Text("Электронная почта")
                            .font(.custom("Nunito", size: 13))
                            .frame(width: 78)
                        Spacer()
                        Text("ggobdin1@gmail.com")
                            .font(.custom("Nunito", size: 13))
                            .foregroundColor(.black)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Изменить")
                                .font(.custom("Nunito", size: 13))
                                .underline()
                        }
                        
                    }
                    
                    HStack{
                        Text("Телефон")
                            .font(.custom("Nunito", size: 13))
                        Spacer()
                        Text("89000000000")
                            .font(.custom("Nunito", size: 13))
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Изменить")
                                .font(.custom("Nunito", size: 13))
                                .underline()
                        }
                        
                    }
                    
                    HStack{
                        Text("Адрес профиля")
                            .font(.custom("Nunito", size: 13))
                            .frame(width: 55)
                        Spacer()
                        ScrollView(.horizontal, showsIndicators: false){
                            Text("423fdf234890fsf45r34fdsf34fsdfdsfsdf243fds")
                                .font(.custom("Nunito", size: 13))
                        }
                        .frame(width: 100)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Изменить")
                                .font(.custom("Nunito", size: 13))
                                .underline()
                        }
                        
                    }
                    
                    HStack{
                        Text("Язык")
                            .font(.custom("Nunito", size: 13))
                        Spacer()
                        Text("Русский")
                            .font(.custom("Nunito", size: 13))
                        Spacer()
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
                        
                    }
                    VStack{
                        HStack{
                            Spacer()
                            Group{
                                Text("Вы можете ")
                                    .font(.custom("Nunito", size: 13))
                                    .foregroundColor(.black)
                                + Text("удалить ")
                                    .foregroundColor(.red)
                                    .font(.custom("Nunito", size: 13))
                                + Text("свой акаунт")
                                    .font(.custom("Nunito", size: 13))
                                    .foregroundColor(.black)
                            }
                            .onTapGesture {
                                //Delete account
                            }
                            
                            Spacer()
                        }
                        .offset(y: 90)
                        
                    }
                    .frame(height: 200)
                }
                
                //Text("Вы можете удалить свой акаунт")
            }
        }
    }
}

struct Generall_Previews: PreviewProvider {
    static var previews: some View {
        Generall()
    }
}
