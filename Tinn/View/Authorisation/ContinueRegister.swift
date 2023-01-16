//
//  ContinueRegister.swift
//  Tinn
//
//  Created by Руслан Трищенков on 11.01.2023.
//

import SwiftUI

enum Sex {
    case man
    case woman
    case it
    case mine
    case null
}
struct ContinueRegister: View {
    @State var login: String = ""
    @State var name: String = ""
    @State var secondName: String = ""
    @State var sex: String = "Пол"
    @State var number: String = ""
    @State var birthday: Date = Date(timeIntervalSince1970: 234345)

    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                VStack(spacing: 0){
                    Text("Продолжите регистрацию")
                        .font(.custom("CenturyGothic-Bold", size: 18))
                        .padding(.bottom, 30)
                    
                    VStack(spacing: 0){
                        TextField("Логин", text: $login)
                            .font(.custom("Nunito", size: 16))
                            .padding()
                            .frame(width: 300, height: 32)
                        Rectangle()
                            .frame(width: 280, height: 0.6)
                            .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                    }
                    .padding(.top, 10)
                    
                    VStack(spacing: 0){
                        TextField("Имя", text: $name)
                            .font(.custom("Nunito", size: 16))
                            .padding()
                            .frame(width: 300, height: 32)
                        Rectangle()
                            .frame(width: 280, height: 0.6)
                            .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                            .opacity(0.6)
                    }
                    .padding(.top, 10)
                    
                    VStack(spacing: 0){
                        TextField("Фамилия", text: $secondName)
                            .font(.custom("Nunito", size: 16))
                            .padding()
                            .frame(width: 300, height: 32)
                        Rectangle()
                            .frame(width: 280, height: 0.6)
                            .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                            .opacity(0.6)
                    }
                    .padding(.top, 10)
                    
                    VStack(spacing: 0){
                        HStack(spacing: 0){
                            Button {
                                
                            } label: {
                                Menu{
                                    Button("Мужской") {
                                        Text(sex)
                                    }
                                    
                                    Button("Женский") {
                                        Text(sex)
                                    }
                                    
                                    Button("Оно") {
                                        Text(sex)
                                    }
                                    
                                    Button("Свое") {
                                        Text(sex)
                                    }
                                    
                                    Button("Не указывать") {
                                        Text(sex)
                                    }
                                } label: {
                                    Text(sex)
                                        .font(.custom("Nunito", size: 16))
                                        .padding(.leading, 45)
                                        .frame(width: 300, height: 32)
                                }
                                
                                .foregroundColor(.black.opacity(0.2))
                                .padding(.trailing, 280)
                                .padding(.top, 30)
                                .padding(.leading, 30)
                                
                                
                            }
                            
                            Image(systemName: "chevron.down")
                                .offset(x: -30, y: 10)
                                .opacity(0.2)
                            
                        }
                        
                        Rectangle()
                            .frame(width: 280, height: 0.6)
                            .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                            .opacity(0.6)
                        
                    }//VStack
                    
                    HStack(spacing: 0){
                        VStack(spacing: 0){
                            TextField("Телефон", text: $number)
                                .padding(.top, 20)
                                .padding(.horizontal, 40)
                            Rectangle()
                                .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                                .frame(height: 0.6)
                                .padding(.leading, 20)
                                .frame(width: 120)
                        }
                        
                        VStack(spacing: 0){
                            HStack(spacing: 0){
                                TextField("дд.мм.гг", text: $number)
                                    .padding(.top, 20)
                                    .padding(.horizontal, 40)
                                Image(systemName: "calendar")
                                    .opacity(0.3)
                                    .offset(x: -40, y: 10)
                            }
                            Rectangle()
                                .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                                .frame(height: 0.6)
                                .padding(.trailing, 22)
                                .frame(width: 170)
                                .offset(y: 3)
                            
                        }//VStack
                    }
                    
                    VStack(spacing: 0){
                        Text("Нажимая на кнопку “Регистрация” вы даете \n согласие на")
                            .font(.custom("CenturyGothic", size: 15))
                            //.padding(.leading, 100)
                            .padding(.top, 10)
                            .multilineTextAlignment(.center)
                        Link("обработку своих персональных данных",
                             destination: URL(string: "https://www.example.com/TOS.html")!)
                        .font(.custom("CenturyGothic", size: 15))
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Продолжить")
                    }
                    .font(.custom("CenturyGothic", size: 16))
                    .foregroundColor(.white.opacity(0.8))
                    .frame(width: 190, height: 50)
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(8)
                    .padding(.top, 20)
                    
                }//VStack
            }// ZStack
            .preferredColorScheme(.light)
        }//NavigationView
    }
}

struct ContinueRegister_Previews: PreviewProvider {
    static var previews: some View {
        ContinueRegister()
    }
}
