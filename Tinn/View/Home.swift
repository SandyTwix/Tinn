//
//  Home.swift
//  Tinn
//
//  Created by Руслан Трищенков on 11.01.2023.
//

import SwiftUI

struct Home: View {
    @State var indexBar = 0
    
    var body: some View {
        //ScrollView(.vertical, showsIndicators: false) {
            ZStack{
                VStack{
                    HeaderView()
                        .shadow(color: .black.opacity(0.2), radius: 20)
                    
                    Text("Рекомендуемое")
                    
                    VideoCard()
                    VideoCard()
                    
                    Spacer()
                    TabBar(index: self.$indexBar)
                        .shadow(color: .black.opacity(0.2), radius: 20)
                }
                .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.top))
            }
        //}//ScrollView
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
