//
//  HomeScreen.swift
//  Tinn
//
//  Created by Руслан Трищенков on 09.01.2023.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject private var  loginVM = LoginViewModel()

    var body: some View {        
        if loginVM.isAuthenticated == false{
           return AnyView(LoginView())
        } else {
           return AnyView(Home())
        }
    }
}

struct LoginView: View {
    
    @State private var wrongEmail = Color.black.opacity(0.4)
    @State private var wrongPassword = Color.black.opacity(0.2)
    
    // Отвечает за показ Хоум Скрина
    @State private var homeViewIsOn = false
    // Отвечает за показ пароля по глазику
    @State private var showPassword = false
    // Отвечает за исчезание пароля из филдов
    @State var isEmptyField = false
    // Объект LoginView()
    @StateObject private var  loginVM = LoginViewModel()
    // Отвечает за кнопку Запомнить
    @State var isRemember = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("Авторизация")
                        .font(.custom("centurygothic_bold", size: 18))
                        .padding(.bottom, 30)
                    
                    TextField("Email / ID 3.0", text: $loginVM.email)
                        .padding()
                        .frame(width: 300, height: 32)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    
                    Rectangle()
                        .frame(width: 280, height: 0.5)
                        .foregroundColor(wrongPassword)
                        //.border(.red, width: CGFloat(wrongPassword))
                    
                    HStack{
                        if self.showPassword {
                            TextField("Пароль", text: $loginVM.password)
                                .padding()
                                .frame(width: 270, height: 32)
                                .autocapitalization(.none)
                        } else {
                            SecureField("Пароль", text: $loginVM.password)
                                .padding()
                                .frame(width: 270, height: 32)
                                .autocapitalization(.none)
                        }
                        
                        Button {
                            self.showPassword.toggle()
                        } label: {
                            Image("eye")
                                .aspectRatio(contentMode: .fit)
                                .offset(x: -10)
                        }
                    }
                    
                    Rectangle()
                        .frame(width: 280, height: 0.6)
                        .foregroundColor(wrongPassword)
                        
                    
                    HStack{
                        Button {
                            
                        } label: {
                            NavigationLink(destination: RegisterScreen().navigationBarBackButtonHidden(true), label: {
                                Text("Нет аккаунта? Создайте его!")
                            })
                        }
                        .font(.system(size: 12))
                        .padding(.trailing, 12)
                        
                        Text("Запомнить")
                            .font(.system(size: 12))
                        
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
                                    .foregroundColor(.black)
                                    .opacity(0.3)
                            }
                            
                        }
                    }
                    .padding(.top, 5)
                    
                    VStack{
                        Text("Войти с помощью")
                        Image("vk")
                    }
                    .padding(.top, 60)
                    
                    NavigationLink(isActive: $homeViewIsOn) {
                        Home().navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            loginVM.login()
                            
                            if loginVM.isAuthenticated{
                                homeViewIsOn.toggle()
                            }
                        } label: {
                            Text("Войти")
                                .foregroundColor(.white)
                                .opacity(loginVM.email.isEmpty || loginVM.password.isEmpty ? 0.8 : 1)
                                .font(.system(size: 16).bold())
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.blue)
                                .frame(width: 190, height: 48)
                                .opacity(loginVM.email.isEmpty || loginVM.password.isEmpty ? 0.3 : 1)
                        )
                        .padding(.top, 70)
                    }
                    .navigationBarBackButtonHidden(true)
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
