//
//  SettingsView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 20.01.2023.
//

import SwiftUI

struct SettingsView: View {
    @State var selectedCategory = 0
    
    var categories = [
        "Общее",
        "Личные данные",
        "Безопасность",
        "Приватность",
        "Уведомления",
        "Информация о канале"
    ]
    
    var body: some View {
        ZStack {
            Color(red: 0.98, green: 0.988, blue: 1)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 10){
                        ForEach(0..<categories.count, id: \.self) { category in
                            Button {
                                withAnimation {
                                    self.selectedCategory = category
                                }
                            } label: {
                                if selectedCategory == category{
                                    Text(categories[category])
                                        .foregroundColor(.white)
                                        .font(.custom("Nunito", size: 13))
                                } else {
                                    Text(categories[category])
                                        .foregroundColor(.black)
                                    .font(.custom("Nunito", size: 13))                            }
                            }
                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                            .background(selectedCategory == category ? Color.blue : Color.white.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }
                    }
                }//ScrollView
                .padding(.horizontal, 20)
                
                ZStack{
                    switch selectedCategory {
                    case 0:
                        NavigationView{
                            VStack{
                                Generall()
                            }
                        }
                    case 1:
                        NavigationView{
                            VStack{
                                PersonalDataa()
                            }
                        }
                    case 2:
                        NavigationView{
                            VStack{
                                Securityy()
                            }
                        } // 1396620412
                    case 3:
                        NavigationView{
                            VStack{
                                Privacyy()
                            }
                        }
                    case 4:
                        NavigationView{
                            VStack{
                                Notifications()
                            }
                        }
                        
                    case 5:
                        NavigationView{
                            VStack{
                                Information()
                            }
                        }
                        
                    default:
                        NavigationView{
                            VStack{
                                Notifications()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
