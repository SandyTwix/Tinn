//
//  Webservice.swift
//  Tinn
//
//  Created by Руслан Трищенков on 10.01.2023.
//

import Foundation

enum AuthenticationError: Error {
    case invalidCredentails
    case custom(errorMessage: String)
}

struct LoginRequestBody: Codable {
    let email: String
    let password: String
}

struct LoginResponse: Codable {
    let success: Bool?
    let message: String?
    let data: LoginResponseBody?
}

struct LoginResponseBody: Codable {
    let token: String?
}



class Webservice {
    
    func login(email: String, password: String, completion: @escaping (Result<String, AuthenticationError>) -> Void) {
            
            guard let url = URL(string: "https://auth.tinn.io/api/login") else {
                completion(.failure(.custom(errorMessage: "URL is not correct")))
                return
            }
        
        let body : [String : String] = ["password": password, "email": email]
        
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
                
                try! JSONDecoder().decode(LoginResponse.self, from: data)
                
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
}

