//
//  MyCasesView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 18.01.2023.
//

import SwiftUI

struct MyCasesView: View {
    @State var search = ""
    @State var selectedIndex = 0
    
    let tabs = [
        "Все",
        "В работе",
        "Приняты в работу",
        "Отклонено",
    ]
    
    var body: some View {
        ZStack{
            VStack{
                HeaderView()
                    .shadow(color: .black.opacity(0.15), radius: 20)
                ScrollView{
                    VStack{
                        HStack{
                            Text("Заявки в работе")
                                .font(.custom("CenturyGothic-Bold", size: 22))
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 10, leading: 40, bottom: 20, trailing: 0))
                        
                        VStack{
                            TextField("Поиск", text: $search)
                                .font(.custom("CenturyGothic", size: 12))
                                .padding(EdgeInsets(top: 0, leading: 40, bottom: 10, trailing: 0))
                            Rectangle()
                                .fill(Color.black.opacity(0.2))
                                .frame(width: 320, height: 0.5)
                                .offset(y: -15)
                        }
                        
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
                        .padding(.horizontal, 10)
                    }//VStack
                }//ScrollView
                .refreshable {
                    
                }
            }//VStack
        }//ZStack
    }
}

struct MyCasesView_Previews: PreviewProvider {
    static var previews: some View {
        MyCasesView()
    }
}
