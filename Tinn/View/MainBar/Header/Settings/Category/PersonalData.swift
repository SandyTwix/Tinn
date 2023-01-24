//
//  PersonalData.swift
//  Tinn
//
//  Created by Руслан Трищенков on 20.01.2023.
//

import SwiftUI

struct PersonalData: View {
    @State var loginField = "Sandytwix"
    @State var nameField = "Sandy"
    @State var secondNameField = "Twix"
    @State var number = "89000000000"
    @State var date:Date = Date(timeIntervalSince1970: 3324234)
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color.white)
                    .shadow(color: .gray.opacity(0.4), radius: 4)
                    .frame(height: 480)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 10)
                    .padding(.top, 20)
                
                ScrollView{
                    VStack{
                        TextField("Логин", text: $loginField)
                            .font(.custom("Nunito", size: 13))
                            .padding(EdgeInsets(top: 35, leading: 30, bottom: 5, trailing: 0))
                        Divider().padding(.horizontal, 20)
                    }
                    
                    VStack{
                        TextField("Имя", text: $nameField)
                            .font(.custom("Nunito", size: 13))
                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 10, trailing: 0))
                        Divider().padding(.horizontal, 20)
                    }
                    
                    VStack{
                        TextField("Фамилия", text: $secondNameField)
                            .font(.custom("Nunito", size: 13))
                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 10, trailing: 0))
                        Divider().padding(.horizontal, 20)
                    }
                    
                    VStack{
                        TextField("Телефон", text: $number)
                            .font(.custom("Nunito", size: 13))
                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 10, trailing: 0))
                        Divider().padding(.horizontal, 20)
                    }
                    
                    VStack{
                        TextField("дд.мм.гггг", text: $number)
                            .font(.custom("Nunito", size: 13))
                            .padding(EdgeInsets(top: 25, leading: 30, bottom: 10, trailing: 0))
                        Divider().padding(.horizontal, 20)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Сохранить")
                            .foregroundColor(.white)
                            .font(.custom("Nunito", size: 13))
                    }
                    .frame(width: 140, height: 40)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top, 80)
                    

                }
            }
        }
        .background(Color(red: 0.98, green: 0.988, blue: 1).edgesIgnoringSafeArea(.all))
    }
}

struct PersonalData_Previews: PreviewProvider {
    static var previews: some View {
        PersonalData()
    }
}
