//
//  Settings.swift
//  Tinn
//
//  Created by Руслан Трищенков on 20.01.2023.
//

import SwiftUI

struct Settings: View {
    @State var selectedIndex = 0
    let tabs = [
        "Настройки",
        "Финансы",
        "Кошелек",
        "Заявки на создание контента",
        "Чат",
        "Моя комната",
        "Статистика",
    ]
    
    let tabsFill = [
        "Настройки выбрано",
        "Финансы выбрано",
        "Кошелек выбрано",
        "Заявки на создание контента выбрано",
        "Чат выбрано",
        "Моя комната выбрано",
        "Статистика выбрано",
    ]
    
    var body: some View {
        VStack{
            HeaderView()
                .shadow(color: .black.opacity(0.15), radius: 20)
            
            VStack(spacing: 30){
                ScrollView{
                    ForEach(0..<tabs.count, id: \.self) { tab in
                        Button {
                            withAnimation(.easeIn(duration: 0.1)){
                                self.selectedIndex = tab
                            }
                        } label: {
                            if selectedIndex == tab {
                                HStack{
                                    Image(tabsFill[tab])
                                    Text(tabs[tab])
                                        .foregroundColor(.white)
                                        .font(.custom("Nunito", size: 16))
                                    Spacer()
                                }
                                .padding(.horizontal, 20)
                            } else {
                                HStack{
                                    Image(tabs[tab])
                                    Text(tabs[tab])
                                        .foregroundColor(.black)
                                        .font(.custom("Nunito", size: 16))
                                    Spacer()
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                        .frame(width: 330, height: 60)
                        .background(selectedIndex == tab ? Color.blue : Color.white)
                        .cornerRadius(10)

                    }
                }
            }//VStack
            .padding(.top, 140)
        }//VStack
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
