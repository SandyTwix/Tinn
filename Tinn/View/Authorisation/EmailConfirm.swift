//
//  EmailConfirm.swift
//  Tinn
//
//  Created by Руслан Трищенков on 11.01.2023.
//

import SwiftUI

struct EmailConfirm: View {
    @ObservedObject var viewModel = LoginViewModel()
    
    @State private var homeViewIsOn = false
    var body: some View {
        
        ZStack {
            Color.white
            
            VStack{
                VStack(alignment: .center, spacing: 0){
                    Image("Email")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    
                    Text("Подтвердите email для защиты вашего профиля")
                        .foregroundColor(.black)
                        .font(.custom("CenturyGothic-Bold", size: 18))
                        .padding(.top, 25)
                        .multilineTextAlignment(.center)
                    
                    Text("На Вашу почту было отправлено письмо с кодом подтверждения. Введите код ниже, чтобы подтвердить электронную почту")
                        .font(.custom("Nunito", size: 18))
                        .padding(.top, 20)
                        .padding(.horizontal, 50)
                        .multilineTextAlignment(.center)
                    
                    VStack{
                        TextField("Код подтверждения", text: $viewModel.emailCode)
                            .font(.custom("Nunito", size: 16))
                            .multilineTextAlignment(.center)
                        Rectangle()
                            .background(Color.black.opacity(0))
                            .frame(width: 200, height: 0.6)
                            
                    }
                    .padding(.top, 50)
                    
                    NavigationLink(isActive: $homeViewIsOn) {
                        ContinueRegister().navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
//                            let comfirmation = EmailStatusResponse(status: true, errors: nil, data: confirmCode)
//                            APIManager.shareInstance.callingEmailApi(emailComfirmation: comfirmation)
//
//                            if APIManager.shareInstance.isComfirmed{
//                                homeViewIsOn.toggle()
//                            }
                            
                            let comfireation = EmailStatusResponse(status: true, errors: nil, data: nil)
                            viewModel.callingEmailApi(emailComfirmation: comfireation)
                        } label: {
                            Text("Подтвердить")
                                .font(.custom("CenturyGothic", size: 16))
                        }
                        .foregroundColor(.white.opacity(0.8))
                        .frame(width: 190, height: 50)
                        .background(viewModel.emailCode.isEmpty ? Color.blue.opacity(0.3) : Color.blue)
                        .cornerRadius(8)
                        .padding(.top, 60)
                    }
                    .disabled(viewModel.emailCode.isEmpty ? true : false)
                    .onReceive(viewModel.$isComfirmedCode) { viewModel in
                        if viewModel{
                            self.homeViewIsOn.toggle()
                        }
                    }
                    .navigationBarBackButtonHidden(true)
                }
            }
        }
        .preferredColorScheme(.light)
    }
}

struct EmailConfirm_Previews: PreviewProvider {
    static var previews: some View {
        EmailConfirm()
    }
}
