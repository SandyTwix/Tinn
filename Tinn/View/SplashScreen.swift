//
//  SplashScreen.swift
//  Tinn
//
//  Created by Руслан Трищенков on 09.01.2023.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            HomeScreen()
        } else{
            // Splash Screen
            ZStack{
                Image("Background")
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                VStack{
                    Image("Logo")
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1)) {
                        self.size = 1
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.isActive = true
                }
            }
            .environment(\.colorScheme, .light)
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
