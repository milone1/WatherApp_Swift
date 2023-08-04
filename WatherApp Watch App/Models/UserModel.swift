//
//  UserModel.swift
//  WatherApp Watch App
//
//  Created by Milan Marin on 3/08/23.
//

import Foundation

struct UserModel: Decodable {
    let id: String
    let name: String
    let email: String
    let password: String
    let img_Photo: String
    let rol: String
    let phone: String
    let create_at: String
}
