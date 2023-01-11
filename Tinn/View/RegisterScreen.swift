//
//  RegisterScreen.swift
//  Tinn
//
//  Created by Руслан Трищенков on 10.01.2023.
//

import SwiftUI

struct RegisterScreen: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var inviteCode = ""
    // Отвечает за показ пароля по глазику
    @State private var showPasswordFirst = false
    // Отвечает за показ пароля по глазику
    @State private var showPasswordSecond = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                
                VStack{
                    
                        Text("Регистрация")
                            .font(.custom("centurygothic_bold", size: 18))
                            .padding(.bottom, 30)
                    
                    VStack(spacing: 5){
                        TextField("E-mail", text: $email)
                            .padding()
                            .frame(width: 300, height: 32)
                        
                        Rectangle()
                            .frame(width: 280, height: 0.5)
                            .foregroundColor(Color.black.opacity(0.6))
                    }
                    .padding(.top, 10)

                    
                    VStack(spacing: 5){
                        HStack(spacing: 0){
                            if self.showPasswordFirst {
                                TextField("Пароль", text: $password)
                                    .padding()
                                    .frame(width: 280, height: 32)
                                    .autocapitalization(.none)
                            } else {
                                SecureField("Пароль", text: $password)
                                    .padding()
                                    .frame(width: 280, height: 32)
                                    .autocapitalization(.none)
                            }
                            Button {
                                showPasswordFirst.toggle()
                            } label: {
                                Image("eye")
                                    .aspectRatio(contentMode: .fit)
                                    .offset(x: -10)
                            }
                        }
                        
                        Rectangle()
                            .frame(width: 280, height: 0.6)
                            .foregroundColor(Color.black.opacity(0.4))
                    }
                    .padding(.top, 10)
                    
                    VStack(spacing: 5){
                        HStack{
                            if self.showPasswordSecond {
                                TextField("Подтвердите пароль", text: $confirmPassword)
                                    .padding()
                                    .frame(width: 280, height: 32)
                                    .autocapitalization(.none)
                            } else {
                                SecureField("Подтвердите пароль", text: $confirmPassword)
                                    .padding()
                                    .frame(width: 280, height: 32)
                            }
                                   
//                            SecureField("Подтвердите пароль", text: $confirmPassword)
//                                .padding()
//                                .frame(width: 300, height: 32)
//
                            
                            Button {
                                showPasswordSecond.toggle()
                            } label: {
                                Image("eye")
                                    .aspectRatio(contentMode: .fit)
                                    .offset(x: -15)
                            }
                        }
                        
                        Rectangle()
                            .frame(width: 280, height: 0.6)
                            .foregroundColor(Color.black.opacity(0.4))
                        
                    }
                    .padding(.top, 10)
                    
                    VStack(spacing: 5){
                        TextField("Код-приглашения", text: $inviteCode)
                            .padding()
                            .frame(width: 300, height: 32)
                        
                        Rectangle()
                            .frame(width: 280, height: 0.5)
                            .foregroundColor(Color.black.opacity(0.4))
                    }
                    .padding(.top, 10)
                    
                    HStack{
                        Button {
                            
                        } label: {
                            NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true), label: {
                                Text("Уже есть аккаунта? Войдите!")
                            })
                        }
                        .font(.system(size: 12))
                        .padding(.trailing, 12)
                    }
                    .padding(.top, 40)
                    
                    VStack{
                        Text("Зарегистрироваться с помощью")
                        Image("vk")
                    }
                    .padding(.top, 1)
                    
                    if email.count <= 8 || password.count <= 6{
                        Button {
                            
                            
                            NavigationLink(destination: Text("Loggined")){
                                EmptyView()
                            }
                        } label: {
                            Text("Продолжить")
                                .foregroundColor(.white)
                                .opacity(0.8)
                                .font(.system(size: 16).bold())
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.blue)
                                .frame(width: 190, height: 48)
                                .opacity(0.3)
                        )
                        .padding(.top, 70)
                    } else {
                        Button {
                            
                        } label: {
                            Text("Зарегистрироваться")
                                .foregroundColor(.white)
                                .opacity(1)
                                .font(.system(size: 16).bold())
                            
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.blue)
                                .frame(width: 190, height: 48)
                                .opacity(1)
                            
                        )
                        .padding(.top, 70)
                    }
                    
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
