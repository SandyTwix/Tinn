//
//  HeaderMenu.swift
//  Tinn
//
//  Created by Руслан Трищенков on 19.01.2023.
//

import SwiftUI

struct HeaderMenu: View {
    
    @State var selectedIndex = 0
    
    let settings = [
        "Мой канал",
        "Настройки",
        "Выход",
    ]
    
    var body: some View {
        ZStack {
            VStack(spacing: 15){
                Button {
                    
                } label: {
                    HStack(spacing: 12){
                        Text("Мой канал")
                            .font(.custom("Nuniro", size: 20))
                            .foregroundColor(.black)
                    }
                }
                .padding(EdgeInsets(top: 20, leading: 70, bottom: 10, trailing: 70))
                
                Button {
                    
                } label: {
                    HStack(spacing: 12){
                        Text("Настройки")
                            .font(.custom("Nuniro", size: 20))
                            .foregroundColor(.black)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 70, bottom: 10, trailing: 70))
                
                Button {
                    
                } label: {
                    HStack(spacing: 12){
                        Text("Выход")
                            .font(.custom("Nuniro", size: 20))
                            .foregroundColor(.red)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 70, bottom: 20, trailing: 70))
                
            }
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .black.opacity(0.15), radius: 40)
        }
    }
}

struct HeaderMenu_Previews: PreviewProvider {
    static var previews: some View {
        HeaderMenu()
    }
}
