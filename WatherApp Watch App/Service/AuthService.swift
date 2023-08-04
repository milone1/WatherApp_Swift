//
//  AuthService.swift
//  WatherApp Watch App
//
//  Created by Milan Marin on 3/08/23.
//

import Foundation

class AuthService {
    func Login(login: LoginModel, completion: @escaping (LoginResponse?) -> ())
    {
        guard let url = URL(string: "https://localhost:7048/api/login") else{
            fatalError("Invalid URL")
        }
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        request.addValue(("application/json"), forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(login)
        
        URLSession.shared.dataTask(with: request) {data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                print(data)
                print(response)
                print(error)
                return
            }
            
            let createAuthResponse = try? JSONDecoder().decode(LoginResponse.self, from: data)
            
            print(createAuthResponse)
            
            DispatchQueue.main.async {
                completion(createAuthResponse)
            }
        }.resume()
    }
}
