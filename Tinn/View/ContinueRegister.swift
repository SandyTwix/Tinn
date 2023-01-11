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
    @State var sex: String = ""
    @State var number: String = ""
    @State var birthday: Date = Date(timeIntervalSince1970: 234345)
    
    var body: some View {
        ZStack{
            Color.white
            VStack{
                Text("Продолжите регистрацию")
                    .foregroundColor(.black)
                    .font(.custom("centurygothic_bold", size: 18))
                
                Group{
                    TextField("Логин", text: $login)
                        .padding(.top, 55)
                        .padding(.horizontal, 40)
                    Rectangle()
                        .background(.black)
                        .opacity(0.4)
                        .frame(height: 0.6)
                        .padding(.horizontal, 35)
                }
                
                Group{
                    TextField("Имя", text: $name)
                        .padding(.top, 20)
                        .padding(.horizontal, 40)
                    Rectangle()
                        .background(.black)
                        .opacity(0.2)
                        .frame(height: 0.6)
                        .padding(.horizontal, 35)
                }
                
                Group{
                    TextField("Фамилия", text: $secondName)
                        .padding(.top, 20)
                        .padding(.horizontal, 40)
                    Rectangle()
                        .background(.black)
                        .opacity(0.2)
                        .frame(height: 0.6)
                        .padding(.horizontal, 35)
                }
                
                VStack() {
                    HStack{
                        Button {
                            
                        } label: {
                            Menu{
                                Button("Мужской") {
                                    
                                }
                                
                                Button("Женский") {
                                    
                                }
                                
                                Button("Оно") {
                                    
                                }
                                
                                Button("Свое") {
                                    
                                }
                                
                                Button("Не указывать") {
                                    
                                }
                            } label: {
                                Text("Пол")
                                
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
                        .fill(Color.black.opacity(0.4))
                        .frame(height: 0.6)
                        .padding(.horizontal, 35)
                        .padding(.top, 10)
                    
                }
                
                HStack{
                    VStack{
                        TextField("Телефон", text: $number)
                            .padding(.top, 20)
                            .padding(.horizontal, 40)
                        Rectangle()
                            .background(.black)
                            .opacity(0.2)
                            .frame(height: 0.6)
                            .padding(.leading, 23)
                            .frame(width: 170)
                    }
                    
                    VStack{
                        HStack{
                            TextField("дд.мм.гг", text: $number)
                                .padding(.top, 20)
                                .padding(.horizontal, 40)
                            Image(systemName: "calendar")
                                .opacity(0.3)
                                .offset(x: -40, y: 10)
                        }
                        Rectangle()
                            .background(.black)
                            .opacity(0.2)
                            .frame(height: 0.6)
                            .padding(.trailing, 22)
                            .frame(width: 170)
                            .offset(y: 3)
                            
                    }
                }
               
                VStack(spacing: 0){
                    Text("Нажимая на кнопку “Регистрация” вы даете согласие на")
                        .font(.custom("", size: 15))
                        .padding(.horizontal, 40)
                        .padding(.top, 10)
                    Link("обработку своих персональных данных",
                         destination: URL(string: "https://www.example.com/TOS.html")!)
                    .font(.custom("", size: 15))
                }

                Button {
                    
                } label: {
                    Text("Продолжить")
                }
                .foregroundColor(.white.opacity(0.8))
                .frame(width: 190, height: 50)
                .background(Color.blue.opacity(0.3))
                .cornerRadius(8)
                .padding(.top, 20)
                
            }
        }
        .preferredColorScheme(.light)
    }
}

struct ContinueRegister_Previews: PreviewProvider {
    static var previews: some View {
        ContinueRegister()
    }
}
