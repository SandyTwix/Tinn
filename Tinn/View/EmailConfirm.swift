//
//  EmailConfirm.swift
//  Tinn
//
//  Created by Руслан Трищенков on 11.01.2023.
//

import SwiftUI

struct EmailConfirm: View {
    @State private var confirmCode = ""
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
                        .font(.custom("centurygothic_bold", size: 18))
                        .padding(.top, 25)
                        .multilineTextAlignment(.center)
                    
                    Text("На Вашу почту было отправлено письмо с кодом подтверждения. Введите код ниже, чтобы подтвердить электронную почту")
                        .padding(.top, 20)
                        .padding(.horizontal, 50)
                        .multilineTextAlignment(.center)
                    
                    VStack{
                        TextField("Код подтверждения", text: $confirmCode)
                            .multilineTextAlignment(.center)
                        Rectangle()
                            .background(Color.black.opacity(0))
                            .frame(width: 300, height: 0.6)
                            
                    }
                    .padding(.top, 50)
                    
                    Button {
                        
                    } label: {
                        Text("Подтвердить")
                    }
                    .foregroundColor(.white.opacity(0.8))
                    .frame(width: 190, height: 50)
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(8)
                    .padding(.top, 60)

                    
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
