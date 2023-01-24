//
//  Security.swift
//  Tinn
//
//  Created by Руслан Трищенков on 20.01.2023.
//

import SwiftUI

struct Security: View {
    @State var passwordField = "Обновлен 10.01.2023"
    @State var devicesField = "IPhone 12"
    
    var body: some View {
        ScrollView {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color.white)
                    .shadow(color: .gray.opacity(0.4), radius: 4)
                    .frame(height: 140)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 10)
                    .padding(.top, 20)
                ScrollView{
                    VStack{
                        HStack{
                            Text("Пароль")
                                .frame(width: 50)
                                .font(.custom("Nunito", size: 13))
                                .padding(EdgeInsets(top: 35, leading: 30, bottom: 5, trailing: 0))
                            
                            Spacer()
                            
                            Text("Обновлен 10.01.2023")
                                .font(.custom("Nunito", size: 13))
                                .padding(EdgeInsets(top: 35, leading: 70, bottom: 5, trailing: 30))
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Text("Изменить")
                                    .font(.custom("Nunito", size: 13))
                                    .padding(EdgeInsets(top: 35, leading: 0, bottom: 5, trailing: 30))
                                    .underline()
                            }
                        }
                        Divider().padding(.horizontal, 20)
                    }
                    
                    VStack{
                        HStack{
                            Text("Привязанные устройства")
                                .font(.custom("Nunito", size: 13))
                                .padding(EdgeInsets(top: 25, leading: 30, bottom: 5, trailing: 0))
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("2 устройства")
                                    .underline()
                                    .font(.custom("Nunito", size: 13))
                                    .padding(EdgeInsets(top: 25, leading: 0, bottom: 5, trailing: 30))
                            }

                        }
                    }
                }
            }
        }
        .background(Color(red: 0.98, green: 0.988, blue: 1).edgesIgnoringSafeArea(.all))
    }
}

struct Security_Previews: PreviewProvider {
    static var previews: some View {
        Security()
    }
}
