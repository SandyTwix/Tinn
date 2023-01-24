//
//  ForumView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 18.01.2023.
//

import SwiftUI

struct ForumView: View {
    var body: some View {
        ZStack{
            Color(red: 0.98, green: 0.988, blue: 1)
            VStack{
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 10){
                        HStack{
                            Text("Популярное")
                                .font(.custom("CenturyGothic", size: 20))
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        
                        ForumForm()
                    }
                    
                    VStack(spacing: 10) {
                        HStack{
                            Text("Технологии")
                                .font(.custom("CenturyGothic", size: 20))
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                        
                        ForumForm()
                    }
                    
                    VStack(spacing: 10) {
                        HStack{
                            Text("Творчество")
                                .font(.custom("CenturyGothic", size: 20))
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                        
                        ForumForm()
                    }
                    
                }//ScrollView
                .refreshable {
                }
            }
            .padding(.top, 40)
        }
        .overlay(alignment: .top) {
            HeaderView()
                .shadow(color: .black.opacity(0.15), radius: 20)
        }
    }
}

struct ForumView_Previews: PreviewProvider {
    static var previews: some View {
        ForumView()
    }
}
