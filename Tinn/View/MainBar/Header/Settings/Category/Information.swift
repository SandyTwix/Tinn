//
//  Information.swift
//  Tinn
//
//  Created by Руслан Трищенков on 23.01.2023.
//

import SwiftUI

struct Information: View {
    @State var aboutChannel = ""
    @State var email = ""
    @State var number = ""
    @State var country = ""
    @State var vk = ""
    @State var ok = ""
    @State var telegram = ""
    @State var facebook = ""
    @State var instagram = ""
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color.white)
                    .shadow(color: .gray.opacity(0.4), radius: 4)
                    .frame(height: 780)
                    .padding(.horizontal, 30)
                    .padding(.top, 20)
                
                ScrollView{
                    VStack{
                        HStack{
                            Text("Описание")
                                .font(.custom("", size: 20))
                            Spacer()
                        }
                        .padding(.horizontal, 40)
                        
                        TextField("Пару слов о себе", text: $aboutChannel, axis: .vertical)
                            .frame(height: 80)
                            .padding()
                            .lineLimit(8)
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.8), lineWidth: 0.5)
                            )
                            .padding(.horizontal, 40)
                        
                        HStack{
                            Text("Контактные данные")
                                .font(.custom("", size: 20))
                            Spacer()
                        }
                        .padding(.top, 15)
                        .padding(.horizontal, 40)
                        VStack(alignment: .leading){
                            Text("Укажите, как связаться с вами по вопросам сотрудничества. Зрители могут увидеть адрес электронной почту на вкладке ''О канале''.")
                                .font(.custom("", size: 12))
                                .foregroundColor(Color.gray)
                        }
                        .padding(.top, 1)
                        .padding(.horizontal, 40)
                        
                        VStack(spacing: 20){
                            HStack(spacing: 30){
                                Text("Электронная почта")
                                    .font(.custom("", size: 14))
                                
                                VStack(spacing: 5) {
                                    TextField("Эл. почта", text: $email, prompt: Text("Эл. почта").font(.custom("", size: 14)))
                                    
                                    Rectangle()
                                        .foregroundColor(Color.gray.opacity(0.5))
                                        .frame(width: 200, height: 0.5)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                            HStack(spacing: 30){
                                Text("Тел. номер")
                                    .font(.custom("", size: 14))
                                    .padding(.trailing, 55)
                                
                                VStack(spacing: 5) {
                                    TextField("Телефон", text: $number, prompt: Text("Телефон").font(.custom("", size: 14)))
                                    
                                    Rectangle()
                                        .foregroundColor(Color.gray)
                                        .frame(width: 200, height: 0.5)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                            HStack(spacing: 30){
                                Text("Страна")
                                    .font(.custom("", size: 14))
                                    .padding(.trailing, 80)
                                
                                VStack(spacing: 5) {
                                    TextField("Откуда вы?", text: $country, prompt: Text("Откуда вы?").font(.custom("", size: 14)))
                                    
                                    Rectangle()
                                        .foregroundColor(Color.gray.opacity(0.5))
                                        .frame(width: 200, height: 0.5)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                        }
                        
                        VStack(spacing: 20) {
                            HStack{
                                Text("Социальные сети")
                                    .font(.custom("", size: 20))
                                Spacer()
                            }
                            .padding(.horizontal, 40)
                            
                            HStack(spacing: 30){
                                Text("VK")
                                    .font(.custom("", size: 14))
                                    .padding(.trailing, 110)
                                
                                VStack(spacing: 5) {
                                    TextField("Введите URL", text: $vk, prompt: Text("Введите URL").font(.custom("", size: 14)))
                                    
                                    Rectangle()
                                        .foregroundColor(Color.gray.opacity(0.4))
                                        .frame(width: 200, height: 0.5)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                            HStack(spacing: 30){
                                Text("OK")
                                    .font(.custom("", size: 14))
                                    .padding(.trailing, 110)
                                
                                VStack(spacing: 5) {
                                    TextField("Введите URL", text: $ok, prompt: Text("Введите URL").font(.custom("", size: 14)))
                                    
                                    Rectangle()
                                        .foregroundColor(Color.gray.opacity(0.6))
                                        .frame(width: 200, height: 0.5)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                            
                            HStack(spacing: 30){
                                Text("Telegram")
                                    .font(.custom("", size: 14))
                                    .padding(.trailing, 72)
                                
                                VStack(spacing: 5) {
                                    TextField("Введите URL", text: $telegram, prompt: Text("Введите URL").font(.custom("", size: 14)))
                                    
                                    Rectangle()
                                        .foregroundColor(Color.gray.opacity(0.4))
                                        .frame(width: 200, height: 0.5)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                            HStack(spacing: 30){
                                Text("Facebook")
                                    .font(.custom("", size: 14))
                                    .padding(.trailing, 67)
                                
                                VStack(spacing: 5) {
                                    TextField("Введите URL", text: $facebook, prompt: Text("Введите URL").font(.custom("", size: 14)))
                                    
                                    Rectangle()
                                        .foregroundColor(Color.gray.opacity(0.6))
                                        .frame(width: 200, height: 0.5)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                            HStack(spacing: 30){
                                Text("Instagram")
                                    .font(.custom("", size: 14))
                                    .padding(.trailing, 67)
                                
                                VStack(spacing: 5) {
                                    TextField("Введите URL", text: $instagram, prompt: Text("Введите URL").font(.custom("", size: 14)))
                                    
                                    Rectangle()
                                        .foregroundColor(Color.gray.opacity(0.4))
                                        .frame(width: 200, height: 0.5)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                        }
                        .padding(.top, 20)
                        
                        Button {
                            
                        } label: {
                            Text("Сохранить")
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 120, height: 40)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top, 20)

                    
                }
                    .padding(.top, 40)
                }
            }
        }
        .background(Color(red: 0.98, green: 0.988, blue: 1).edgesIgnoringSafeArea(.all))
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
