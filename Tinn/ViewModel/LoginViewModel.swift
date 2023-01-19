//
//  LoginViewModel.swift
//  Tinn
//
//  Created by Руслан Трищенков on 10.01.2023.
//

import Foundation
import Combine
import Alamofire

class LoginViewModel: ObservableObject {
    
    @Published var email: String = "gr.kun.ov@gmail.com"
    @Published var password: String = "12345678"
    @Published var password_confirmation: String = "12345678"
    @Published var code: String = "h53984u843h53:№hjk56:49h:345:sfsd:325"
    @Published var emailCode: String = "12345"
    
    var comfirmCode = "12345"
    
    @Published var isRightPassword = true
    @Published var isRightEmail = true
    @Published var isAuthenticated : Bool = false
    @Published var isRegistred : Bool = false
    @Published var isComfirmedCode : Bool = false
    
    func login() {
        Webservice().login(email: email, password: password) { result in
            switch result {
               case .success(let token):
                //print("Success: \(token)")
                UserDefaults.standard.setValue(token, forKey: "jsonwebtoken")
                DispatchQueue.main.async {
                        self.isAuthenticated = true
                        self.isRightEmail = true
                        self.isRightPassword = true
                }
                
            case .failure(let error):
                DispatchQueue.main.async {
                        self.isAuthenticated = false
                        self.isRightEmail = false
                        self.isRightPassword = false
                }
                print(error.localizedDescription)
            }
        }
    }
    
    func register() {
        Webservice().registration(email: email, password: password, password_confirmation: password_confirmation, code: code) { result in
            switch result {
               case .success(let token):
                //print("Success: \(token)")
                UserDefaults.standard.setValue(token, forKey: "jsonwebtoken")
                DispatchQueue.main.async {
                        self.isRegistred = true

                }
                
            case .failure(let error):
                DispatchQueue.main.async {
                        self.isRegistred = false
                }
                print(error.localizedDescription)
            }
        }
    }
    
    func emailComfirm() {
        Webservice().emailComfirmation(code: comfirmCode) { result in
            switch result {
               case .success(let token):
                //print("Success: \(token)")
                UserDefaults.standard.setValue(token, forKey: "jsonwebtoken")
                DispatchQueue.main.async {
                        self.isComfirmedCode = true

                }
                
            case .failure(let error):
                DispatchQueue.main.async {
                        self.isComfirmedCode = false
                }
                print("Failure: \(error.localizedDescription)")
            }
        }
    }
    
    func callingEmailApi(emailComfirmation: EmailStatusResponse){
        let headers: HTTPHeaders = [
            .contentType("application/json")
        ]
        
        AF.request("https://auth.tinn.io/api/verification/email", method: .post, parameters: emailComfirmation, encoder: JSONParameterEncoder.default, headers: headers).response{ response in
            debugPrint(response)
            
            switch response.result{
            case .success(let data):
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                    self.isComfirmedCode = true
                }
                catch{
                    print(error.localizedDescription)
                    self.isComfirmedCode = false
                }
            case .failure(let erorr):
                print(erorr.localizedDescription)
            }
        }
    }
}

