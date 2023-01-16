//
//  LoginScreen.swift
//  Tinn
//
//  Created by Руслан Трищенков on 12.01.2023.
//

import SwiftUI

struct LoginView: View {
    // Отвечает за показ Хоум Скрина
    @State private var homeViewIsOn = false
    // Отвечает за показ пароля по глазику
    @State private var showPassword = false
    // Отвечает за исчезание пароля из филдов
    @State var isEmptyField = false
    // Отвечает за кнопку Запомнить
    @State var isRemember = false

    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("Авторизация")
                        .font(.custom("CenturyGothic-Bold", size: 18))
                        .padding(.bottom, 30)
                    
                    TextField("Email / ID 3.0", text: $viewModel.email)
                        .padding()
                        .frame(width: 300, height: 32)
                        .font(.custom("Nunito", size: 16))
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    
                    Rectangle()
                        .frame(width: 280, height: 0.6)
                        .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                    
                    Text("Проверьте корректность email")
                        .font(.custom("Nunito", size: 12))
                        .padding(.trailing, 110)
                        .foregroundColor(viewModel.isRightEmail ? .clear :.red)
                    
                    
                    HStack{
                        if self.showPassword {
                            TextField("Пароль", text: $viewModel.password)
                                .padding()
                                .frame(width: 270, height: 32)
                                .font(.custom("Nunito", size: 16))
                                .autocapitalization(.none)
                        } else {
                            SecureField("Пароль", text: $viewModel.password)
                                .padding()
                                .frame(width: 270, height: 32)
                                .font(.custom("Nunito", size: 16))
                                .autocapitalization(.none)
                        }
                        
                        Button {
                            self.showPassword.toggle()
                        } label: {
                            Image("eye")
                                .aspectRatio(contentMode: .fit)
                                .offset(x: -10)
                        }
                    }//HStack
                    
                    Rectangle()
                        .frame(width: 280, height: 0.6)
                        .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                    
                    Text("Проверьте корректность пароля")
                        .font(.custom("Nunito", size: 12))
                        .padding(.trailing, 110)
                        .foregroundColor(viewModel.isRightPassword ? .clear :.red)
                        
                    
                    HStack{
                        HStack(spacing: 0){
                            NavigationLink(destination: RegisterScreen().navigationBarBackButtonHidden(true), label: {
                                Text("Нет аккаунта? Создайте его!")
                            })
                            .font(.custom("CenturyGothic", size: 12))
                        }
                        .padding(.leading, 10)
                        HStack(spacing: 0){
                            Text("Запомнить")
                                .font(.custom("CenturyGothic", size: 12))
                            
                            Button{
                                isRemember.toggle()
                            } label: {
                                if isRemember{
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(.blue)
                                            .frame(width: 18, height: 18)
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                            .font(.system(size: 8))
                                    }
                                } else {
                                    RoundedRectangle(cornerRadius: 4)
                                        .stroke(style: .init(lineWidth: 1))
                                        .frame(width: 18, height: 18)
                                        .foregroundColor(Color(red: 0.796, green: 0.796, blue: 0.796))
                                }
                                
                            }
                            .padding(.leading, 10)
                        }
                    }//HStack
                    .padding(.trailing, 5)
                    .padding(.top, 5)
                    .offset(x: -3)
                    
                    VStack{
                        Text("Войти с помощью")
                            .font(.custom("CenturyGothic", size: 15))
                        
                        Image("vk")
                            .padding(.top, 20)
                    }
                    .padding(.top, 60)
                    
                    NavigationLink(isActive: $homeViewIsOn) {
                        Home()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            viewModel.login()
                        } label: {
                            Text("Войти")
                                .foregroundColor(.white)
                                .opacity(viewModel.email.isEmpty || viewModel.password.isEmpty ? 0.8 : 1)
                                .font(.custom("CenturyGothic", size: 16))
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.blue)
                                .frame(width: 190, height: 48)
                                .opacity(viewModel.email.isEmpty || viewModel.password.isEmpty ? 0.3 : 1)
                        )
                        .padding(.top, 70)
                    }//NavigationLink
                    .navigationBarBackButtonHidden(true)
                    .disabled(viewModel.email.isEmpty || viewModel.password.isEmpty ? true : false)
                    .onReceive(viewModel.$isAuthenticated) { viewModel in
                        if viewModel{
                            self.homeViewIsOn.toggle()
                        }
                    }
                }//VStack
            }//ZStack
            .navigationBarHidden(true)
        }//NavigationView
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
