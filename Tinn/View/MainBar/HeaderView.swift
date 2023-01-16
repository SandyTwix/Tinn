//
//  HeaderView.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack(spacing: 0) {
                Image("BannerLogo")
                    .offset(y: -15)
                Spacer()
                Button {
                    
                } label: {
                    Image("Search")
                }
                .offset(y: -15)
                .padding(.trailing, 28)
                
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .offset(y: -15)

            }
            .frame(height: 40)
            .padding(.horizontal, 25)
        }
        
        .background(Color.white)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
