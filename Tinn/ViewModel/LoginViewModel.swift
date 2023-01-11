//
//  LoginViewModel.swift
//  Tinn
//
//  Created by Руслан Трищенков on 10.01.2023.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    
    var email: String = "gr.kun.ov@gmail.com"
    var password: String = "12345678"
    
    private var  homeScreen = LoginView()
    
    var didChange = PassthroughSubject<LoginViewModel, Never>()
    @Published var isAuthenticated : Bool = false {
            didSet {
                    didChange.send(LoginViewModel())
        }
    }
    
    func login() {
        Webservice().login(email: email, password: password) { result in
            switch result {
               case .success(let token):
                
                UserDefaults.standard.setValue(token, forKey: "jsonwebtoken")
                DispatchQueue.main.async {
                        self.isAuthenticated = true
                }
                
            case .failure(let error):
                
                print(error.localizedDescription)
            }
        }
    }
}
