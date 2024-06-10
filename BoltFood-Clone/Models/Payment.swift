//
//  Payment.swift
//  BoltFood
//
//  Created by Hamza ONAT on 28\05\2024.
//

import Foundation

struct SectionOption{
    var name: String
    var icon: String
    var selected: Bool
}

struct Section {
    var sectionName: String
    var sectionItems: [SectionOption]
    
    static var balanceQuestionData:[SectionOption] = [
        SectionOption(name: "BoltFood nedir?", icon: "help",selected: false),
        SectionOption(name: "Devamını oku", icon: "clock",selected: false)
    ]

    static var paymentMethodData:[SectionOption] = [
        SectionOption(name: "Mobil Ödeme", icon: "phone",selected: false),
        SectionOption(name: "Bakiye", icon: "money",selected: false),
        SectionOption(name: "Kredi Kartı Ekle", icon: "plus",selected: false)
    ]
    
    static var sectionArray = [
        Section(sectionName: "", sectionItems: balanceQuestionData),
        Section(sectionName: "Ödeme Yöntemleri", sectionItems: paymentMethodData),
    ]

}
