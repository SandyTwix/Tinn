//
//  Securityy.swift
//  Tinn
//
//  Created by Руслан Трищенков on 24.01.2023.
//

import SwiftUI

struct Securityy: View {
    var body: some View {
        NavigationView {
                Form{
                    Section(header: Text("Безопасность").font(.custom("Nunito", size: 16))
                        .foregroundColor(.black)){
                    HStack{
                        Text("Пароль")
                            .frame(width: 50)
                            .font(.custom("Nunito", size: 13))
                        
                        Spacer()
                        
                        Text("Обновлен 10.01.2023")
                            .font(.custom("Nunito", size: 13))
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Изменить")
                                .font(.custom("Nunito", size: 13))
                        }
                    }
                    
                    HStack{
                        Text("Привязанные устройства")
                            .font(.custom("Nunito", size: 13))
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Изменить")
                                .font(.custom("Nunito", size: 13))
                        }
                    }
                }
            }
        }
    }
}

struct Securityy_Previews: PreviewProvider {
    static var previews: some View {
        Securityy()
    }
}
