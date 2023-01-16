//
//  HomeScreen.swift
//  Tinn
//
//  Created by Руслан Трищенков on 09.01.2023.
//

import SwiftUI

struct HomeScreen: View {
    @ObservedObject var viewModel = LoginViewModel()

    var body: some View {        
        if viewModel.isAuthenticated == false{
           return AnyView(LoginView())
        } else {
           return AnyView(Home())
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
