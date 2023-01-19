//
//  Webservice.swift
//  Tinn
//
//  Created by Руслан Трищенков on 10.01.2023.
//

import Foundation

class Webservice {
    
    // Using this function for Authentication - Login
    func login(email: String, password: String, completion: @escaping (Result<String, AuthenticationError>) -> Void) {
            //POST Request
            guard let url = URL(string: "https://auth.tinn.io/api/login") else {
                completion(.failure(.custom(errorMessage: "URL is not correct")))
                return
            }
            // Request Body
        let body : [String : String] = ["password": password, "email": email]
        //Encoding our body
        guard let finalBody = try? JSONEncoder().encode(body) else {
            return
        }
            // Create Request
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = finalBody
            
            // Get data using URLSession
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                
                guard let data = data, error == nil else {
                    completion(.failure(.custom(errorMessage: "No data")))
                    return
                }
                
                
                guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) else {
                    completion(.failure(.invalidCredentails))
                    return
                }
                
                guard let datar = loginResponse.data else {
                    completion(.failure(.invalidCredentails))
                    return
                }
                
                guard let token = datar.token else {
                    completion(.failure(.invalidCredentails))
                    return
                }
                completion(.success(token))
            }.resume()
            
        }
    
    // Using this function for Authentication - Registration
    func registration(email: String, password: String, password_confirmation: String, code: String, completion: @escaping (Result<String, AuthenticationError>) -> Void){
        //POST Request
        guard let url = URL(string: "https://auth.tinn.io/api/register") else {
            completion(.failure(.custom(errorMessage: "URL is not correct")))
            return
        }
        //Request Body
        let body : [String : String] = ["email": email, "password": password, "password_confirmation": password_confirmation, "code": code ]
    //Encoding Request Body
    guard let finalBody = try? JSONEncoder().encode(body) else {
        return
    }
        // Create Request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = finalBody
        
        // Getting data using URLSession
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            
            guard let registerResponse = try? JSONDecoder().decode(RegisterResponse.self, from: data) else {
                completion(.failure(.invalidCredentails))
                return
            }
            
            guard let datar = registerResponse.data else {
                completion(.failure(.invalidCredentails))
                return
            }
            
            guard let token = datar.token else {
                completion(.failure(.invalidCredentails))
                return
            }
            completion(.success(token))
        }.resume()
    }
    
    // MARK: Does not working
    // We are using Alamofire in APIManager
    func emailComfirmation(code: String, completion: @escaping (Result<String, AuthenticationError>) -> Void){
        guard let url = URL(string: "https://auth.tinn.io/api/verification/email") else {
            completion(.failure(.custom(errorMessage: "URL is not correct")))
            return
        }
    
        let body : [String : String] = ["code": code ]
    
    guard let finalBody = try? JSONEncoder().encode(body) else {
        return
    }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = finalBody
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }

            guard let emailResponse = try? JSONDecoder().decode(EmailStatusResponse.self, from: data) else {
                completion(.failure(.invalidCredentails))
                return
            }

            guard let mailComfirm = emailResponse.data else {
                completion(.failure(.invalidCredentails))
                return
            }

            completion(.success(mailComfirm))
        }.resume()
    }
}

