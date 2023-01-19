//
//  VideoCard.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import SwiftUI

struct VideoCard: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 20) {
                    Image("video")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 190)
                        .padding(.horizontal, 10)
                    
                    HStack(spacing: 10){
                        Image("avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading,spacing: 0) {
                            Text("Красивые горы")
                                .font(.custom("Nunito", size: 16))
                            Text("sandytwix")
                                .font(.custom("Nunito", size: 14))
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal, 10)
                    
                }
            }
            .frame(width: 400, height: 270)
            .background(Color.white)
            
            ZStack{
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.black.opacity(0.5))
                    .frame(width: 39, height: 22)
                Text("4:52")
                    .foregroundColor(.white)
                    .font(.custom("", size: 11))
            }
            .offset(x: 165, y: 60)
        }//ZStack
        .padding(.top, 5)
    }
}

struct VideoCard_Previews: PreviewProvider {
    static var previews: some View {
        VideoCard()
    }
}
