//
//  RegisterScreen.swift
//  Tinn
//
//  Created by Руслан Трищенков on 10.01.2023.
//

import SwiftUI

struct RegisterScreen: View {
    // Отвечает за показ пароля по глазику
    @State private var showPasswordFirst = false
    // Отвечает за показ пароля по глазику
    @State private var showPasswordSecond = false
    // Отвечает за переход на следующий экран
    @State private var emailViewIsOn = false
    
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                
                VStack{
                    Text("Регистрация")
                        .font(.custom("CenturyGothic-Bold", size: 18))
                        .padding(.bottom, 30)
                    
                    VStack(spacing: 5){
                        TextField("E-mail", text: $viewModel.email)
                            .font(.custom("Nunito", size: 16))
                            .padding()
                            .frame(width: 300, height: 32)
                        
                        Rectangle()
                            .frame(width: 280, height: 0.6)
                            .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                            .opacity(0.5)
                    }
                    .padding(.top, 10)
                    
                    
                    VStack(spacing: 5){
                        HStack(spacing: 0){
                            if self.showPasswordFirst {
                                TextField("Пароль", text: $viewModel.password)
                                    .font(.custom("Nunito", size: 16))
                                    .padding()
                                    .frame(width: 280, height: 32)
                                    .autocapitalization(.none)
                            } else {
                                SecureField("Пароль", text: $viewModel.password)
                                    .font(.custom("Nunito", size: 16))
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
                            .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                    }//VStack
                    .padding(.top, 10)
                    
                    VStack(spacing: 5){
                        HStack(spacing: 0){
                            if self.showPasswordSecond {
                                TextField("Подтвердите пароль", text: $viewModel.password_confirmation)
                                    .font(.custom("Nunito", size: 16))
                                    .padding()
                                    .frame(width: 280, height: 32)
                                    .autocapitalization(.none)
                            } else {
                                SecureField("Подтвердите пароль", text: $viewModel.password_confirmation)
                                    .font(.custom("Nunito", size: 16))
                                    .padding()
                                    .frame(width: 280, height: 32)
                            }
                            
                            Button {
                                showPasswordSecond.toggle()
                            } label: {
                                Image("eye")
                                    .aspectRatio(contentMode: .fit)
                                    .offset(x: -10)
                            }
                        }
                        
                        
                        Rectangle()
                            .frame(width: 280, height: 0.6)
                            .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                            .opacity(0.5)
                        
                        if viewModel.password.count > 5 && viewModel.password_confirmation.count > 5 && viewModel.password != viewModel.password_confirmation{
                            Text("Пароли не совпадают!")
                                .font(.custom("Nunito", size: 12))
                                .foregroundColor(.red)
                                .padding(.trailing, 150)
                        }
                    }//VStack
                    .padding(.top, 10)
                    
                    VStack(spacing: 5){
                        TextField("Код-приглашения", text: $viewModel.code)
                            .font(.custom("Nunito", size: 16))
                            .padding()
                            .frame(width: 300, height: 32)
                        
                        Rectangle()
                            .frame(width: 280, height: 0.5)
                            .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                            .opacity(0.5)
                    }
                    .padding(.top, 10)
                    
                    HStack{
                        Button {
                            
                        } label: {
                            NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true), label: {
                                Text("Уже есть аккаунта? Войдите!")
                            })
                        }
                        .font(.custom("CenturyGothic", size: 12))
                        .padding(.trailing, 12)
                    }
                    .padding(.top, 40)
                    
                    VStack{
                        Text("Зарегистрироваться с помощью")
                            .font(.custom("CenturyGothic", size: 15))
                        Image("vk")
                    }
                    .padding(.top, 1)
                    
                    NavigationLink(isActive: $emailViewIsOn) {
                        EmailConfirm().navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            viewModel.register()
                            
                            //                                if viewModel.isRegistred{
                            //                                    emailViewIsOn.toggle()
                            //                                }
                        } label: {
                            Text("Продолжить")
                                .foregroundColor(.white)
                                .opacity(viewModel.email.isEmpty || viewModel.password.isEmpty || viewModel.password_confirmation.isEmpty ? 0.8 : 1)
                                .font(.custom("CenturyGothic", size: 18))
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.blue)
                                .frame(width: 190, height: 48)
                                .opacity(viewModel.email.isEmpty || viewModel.password.isEmpty || viewModel.password_confirmation.isEmpty ? 0.3 : 1)
                        )
                        .padding(.top, 70)
                    } // NavigationLink
                    .navigationBarBackButtonHidden(true)
                    .disabled(viewModel.email.isEmpty || viewModel.password.isEmpty ? true : false)
                    .onReceive(viewModel.$isRegistred) { viewModel in
                        if viewModel{
                            self.emailViewIsOn.toggle()
                        }
                    }
                }//VStack
            }//VStack
        }//ZStack
        .navigationBarHidden(true)
    }//NavigationView
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
