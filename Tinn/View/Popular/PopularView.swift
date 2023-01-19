//
//  PopularView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 18.01.2023.
//

import SwiftUI

struct PopularView: View {
    @State var selectedIndex = 0
    
    let tabs = [
        "Все",
        "Техника",
        "Машины",
        "Технологии",
        "Юмор",
        "Природа",
        "Сериалы",
        "Видеоблоги",
        "Тренды",
        "Игры"
    ]
    var body: some View {
        VStack{
            HeaderView()
                .padding(.bottom, 10)
                .shadow(color: .black.opacity(0.15), radius: 20)
            
            
            HStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(0..<tabs.count, id: \.self) { number in
                            Spacer()
                            //
                            
                            Button {
                                withAnimation(.easeInOut(duration: 0.1)){
                                    self.selectedIndex = number
                                }
                            } label: {
                                if selectedIndex == number {
                                    Text(tabs[number])
                                        .font(.custom("CenturyGothic", size: 14))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 9, leading: 21, bottom: 9, trailing: 21))
                                        .background(
                                            RoundedRectangle(cornerRadius: 17.5)
                                        )
                                } else {
                                    Text(tabs[number])
                                        .font(.custom("CenturyGothic", size: 14))
                                        .foregroundColor(.black)
                                        .padding(EdgeInsets(top: 9, leading: 21, bottom: 9, trailing: 21))
                                        .background(
                                            RoundedRectangle(cornerRadius: 17.5)
                                                .fill(Color(red: 0.908, green: 0.908, blue: 0.908))
                                        )
                                }
                            }//Button
                            
                            //
                            Spacer()
                        }
                    }//HStack
                }//ScrollView
            }//HStack
            .padding(.bottom, 10)
            
            ZStack{
                switch selectedIndex {
                case 0:
                    NavigationView{
                        VStack{
                            All()
                        }
                    }
                case 1:
                    NavigationView{
                        VStack{
                            Second()
                        }
                    }
                case 2:
                    NavigationView{
                        VStack{
                            Therd()
                        }
                    }
                case 3:
                    NavigationView{
                        VStack{
                            Fours()
                        }
                    }
                    
                default:
                    NavigationView{
                        VStack{
                            All()
                        }
                    }
                }
            }
            
            Spacer()
        }//VStack
    }
}

struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}
