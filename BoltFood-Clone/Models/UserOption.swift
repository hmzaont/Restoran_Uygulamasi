//
//  UserOption.swift
//  BoltFood
//
//  Created by Hamza ONAT on 30\05\2024.
//

import Foundation

enum UserOptionType{
    case payment
    case promocode
    case profile
    case settings
    case about
    case help
}
struct UserOption {
    var title: String
    var icon: String
    var type: UserOptionType
    
    
    static let optionList: [UserOption] = [
        UserOption(title: "Ödeme", icon: "creditcard",type: .payment),
        UserOption(title: "Promosyon Kodu", icon: "tag", type: .promocode),
        UserOption(title: "Profil", icon: "person", type: .profile),
        UserOption(title: "Ayarlar", icon: "gearshape",type: .settings),
        UserOption(title: "Hakkında", icon: "info.circle",type: .about),
        UserOption(title: "Yardım", icon: "questionmark.circle",type: .help),
    ]
}
