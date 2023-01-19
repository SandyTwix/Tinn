//
//  ForumForm.swift
//  Tinn
//
//  Created by Руслан Трищенков on 19.01.2023.
//

import SwiftUI

struct ForumForm: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(height: 250)
                .padding(.horizontal, 20)
                .shadow(color: .black.opacity(0.15), radius: 20)
            
            HStack{
                Text("Тема")
                    .font(.custom("CenturyGothic-Bold", size: 16))
                Spacer()
                VStack(spacing: 0) {
                    Link("Подробнее", destination: URL(string: "https://tinn.io/forum")!)
                        .font(.custom("Nunito", size: 12))
                        .foregroundColor(Color(red: 0.587, green: 0.587, blue: 0.587))
                    
                    Rectangle()
                        .frame(width: 65, height: 0.5)
                        .foregroundColor(Color(red: 0.587, green: 0.587, blue: 0.587))
                        
                }//VStack
            }//HStack
            .padding(.horizontal, 40)
            .padding(.top, -110)
            
            HStack{
                Text("как сшить подушку")
                    .font(.custom("CenturyGothic", size: 16))
                Spacer()
            }
            .padding(.top, -90)
            .padding(.horizontal, 40)
            
            VStack(spacing: 0){
                    HStack{
                        Text("Внесено:")
                            .font(.custom("CenturyGothic-Bold", size: 16))
                        Spacer()
                    }
                    .padding(.horizontal, 40)
                    .padding(.top, -50)
                    
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.4))
                        .frame(height: 8)
                        .padding(.horizontal, 40)
                        .padding(.top, -20)
                        
                    HStack{
                        Spacer()
                        
                        Text("0 / 100 тугриков")
                            .font(.custom("Nunito", size: 13))
                    }
                    .padding(.horizontal, 40)
                }//VStack
            .padding(.top, 20)
            
            VStack(spacing: 0) {
                HStack{
                    Text("Cоздатель:")
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack{
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                    
                    Text("SandyTwix")
                        .font(.custom("Nunito", size: 14))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                .padding(.top, 10)
                
            }//VStack
            .padding(.top, 140)
                

        }//ZStack
    }
}

struct ForumForm_Previews: PreviewProvider {
    static var previews: some View {
        ForumForm()
    }
}
