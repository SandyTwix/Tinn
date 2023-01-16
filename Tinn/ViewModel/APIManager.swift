//
//  APIManager.swift
//  Tinn
//
//  Created by Руслан Трищенков on 12.01.2023.
//

import Foundation
import Alamofire
import Combine

class APIManager{
    static let shareInstance = APIManager()
    
    var didChange = PassthroughSubject<APIManager, Never>()
    
    @Published var isLogined : Bool = false {
            didSet {
                    didChange.send(APIManager())
        }
    }
    
    @Published var isRegistred : Bool = false {
            didSet {
                    didChange.send(APIManager())
        }
    }

    @Published var isComfirmed : Bool = false {
            didSet {
                    didChange.send(APIManager())
        }
    }
    
    @Published var isRightPassword = false{
        didSet {
                didChange.send(APIManager())
        }
    }
    
    @Published var isRightEmail = false {
        didSet {
                didChange.send(APIManager())
        }
    }
    
    func callingRegisterApi(register: RegisterRequestBody){
        let headers: HTTPHeaders = [
            .contentType("application/json")
        ]
        
        AF.request("https://auth.tinn.io/api/register", method: .post, parameters: register, encoder: JSONParameterEncoder.default, headers: headers).response{ response in
            debugPrint(response)
            
            switch response.result{
            case .success(let data):
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                    self.isRegistred = true
                    self.isRightEmail = true
                    self.isRightPassword = true
                }
                catch{
                    print(error.localizedDescription)
                    self.isRightEmail = false
                    self.isRightPassword = false
                }
            case .failure(let erorr):
                print(erorr.localizedDescription)
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
                    self.isComfirmed = true
                }
                catch{
                    print(error.localizedDescription)
                    self.isComfirmed = false
                }
            case .failure(let erorr):
                print(erorr.localizedDescription)
            }
        }
    }
    
    func callingLoginApi(login: LoginRequestBody) {
        let headers: HTTPHeaders = [
            .contentType("application/json")
        ]
        
        AF.request("https://auth.tinn.io/api/login", method: .post, parameters: login, encoder: JSONParameterEncoder.default, headers: headers).response{ response in
            debugPrint(response)
            
            switch response.result{
            case .success(let data):
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                    self.isLogined = true
                }
                catch{
                    print(error.localizedDescription)
                    self.isLogined = false
                }
            case .failure(let erorr):
                self.isLogined = false
                print(erorr.localizedDescription)
            }
        }
    }
}
