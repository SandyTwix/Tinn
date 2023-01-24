//
//  PersonalDataa.swift
//  Tinn
//
//  Created by Руслан Трищенков on 24.01.2023.
//

import SwiftUI

struct PersonalDataa: View {
    @State var loginField = ""
    @State var nameField = ""
    @State var secondNameField = ""
    @State var number = ""
    @State var date:Date = Date(timeIntervalSince1970: 3324234)
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Личные данные").font(.custom("Nunito", size: 16))
                    .foregroundColor(.black)){
                        HStack{
                            TextField("Логин", text: $loginField)
                                .font(.custom("Nunito", size: 13))
                        }
                        
                        HStack{
                            TextField("Имя", text: $nameField)
                                .font(.custom("Nunito", size: 13))
                        }
                        
                        HStack{
                            TextField("Фамилия", text: $secondNameField)
                                .font(.custom("Nunito", size: 13))
                        }
                        
                        HStack{
                            TextField("Телефон", text: $number)
                                .font(.custom("Nunito", size: 13))
                                .keyboardType(.numberPad)
                        }
                        
                        HStack{
                            TextField("Дата рождения", text: $number)
                                .font(.custom("Nunito", size: 13))
                            Spacer()
                            Button {
                                
                            } label: {
                                Image(systemName: "calendar")
                                    .foregroundColor(Color.gray)
                            }
                        }
                    }
            }
        }
    }
}

struct PersonalDataa_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDataa()
    }
}
