//
//  Model.swift
//  Tinn
//
//  Created by Руслан Трищенков on 11.01.2023.
//

import Foundation

// MARK: Login
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

// MARK: Registration
//struct RegisterResponse: Encodable {
//    let success: Bool?
//    let message: String?
//    let data: RegisterResponseBody?
//}
//
//struct RegisterResponseBody: Encodable {
//    let token: String?
//}

struct RegisterResponse: Codable {
    let success: Bool?
    let message: String?
    let data: RegisterResponseBody?
}

struct RegisterResponseBody: Codable {
    let token: String?
}

struct RegisterRequestBody: Codable {
    let email: String?
    let password: String?
    let password_confirmation: String?
    let code: String?
}

// MARK: Email Comfirmation
struct EmailStatusResponse: Codable {
    let status: Bool?
    let errors: String?
    let data: String?
}

// MARK: Enum for errors
enum AuthenticationError: Error {
    case invalidCredentails
    case custom(errorMessage: String)
}
