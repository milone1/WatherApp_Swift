//
//  LoginResponse.swift
//  WatherApp Watch App
//
//  Created by Milan Marin on 3/08/23.
//

import Foundation

struct LoginResponse: Decodable {
    let user: UserModel
    let token: String
}
