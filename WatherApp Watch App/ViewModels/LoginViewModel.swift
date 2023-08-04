//
//  LoginViewModel.swift
//  WatherApp Watch App
//
//  Created by Milan Marin on 3/08/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    var email: String = ""
    var password: String = ""
    
    private var authService: AuthService
    
    init() {
        self.authService = AuthService()
    }
    
    func Login()
    {
        var emailUser: String
        var passwordUser: String
        
        emailUser = self.email.lowercased()
        passwordUser = self.password.lowercased()
        
        let login = LoginModel(email: emailUser, password: passwordUser)
        
        self.authService.Login(login: login) {_ in }
    }
}
