//
//  MyRoom.swift
//  Tinn
//
//  Created by Руслан Трищенков on 18.01.2023.
//

import SwiftUI

struct MyRoom: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Достижения")
                Spacer()
            }
            .padding(.horizontal, 20)
            
            Divider()
                .frame(height: 4)
            
            HStack{
                VStack{
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    
                Text("Регистрация")
                }
                VStack{
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    
                Text("Регистрация")
                }
            }
            .padding(.top, 10)
            .padding(.horizontal, 20)
        }
    }
}

struct MyRoom_Previews: PreviewProvider {
    static var previews: some View {
        MyRoom()
    }
}
