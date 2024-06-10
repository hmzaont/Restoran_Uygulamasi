//
//  Food.swift
//  BoltFood
//
//  Created by Hamza ONAT on 29\05\2024.
//

import Foundation

struct Food{
    var title: String
    var price: Double
    var discountPrice: Double?
    var rating: Double
    var image: String
    var discountPercent: Int?
    var duration: String
    var closed: Bool
    var availableTime: Int
   
        
    static let discountdata: [Food] = [
        Food(title: "Çoban Salata", price: 54.00, discountPrice: 44, rating: 4.3, image: "food", discountPercent: 4, duration: "10-35 min",closed:false,availableTime:12),
        Food(title: "BurgerBuffs™ Özel Menü", price: 66.00, discountPrice: 44, rating: 5.0, image: "rice", discountPercent: 6, duration: "20-45 min",closed:false,availableTime:9),
        Food(title: "Karışık Pizza", price: 20.00, discountPrice: 24, rating: 2.2, image: "pizza-1", discountPercent: 5, duration: "20-30 min",closed:false,availableTime:8),
        Food(title: "Kova Dolusu Tavuk", price: 40.00, discountPrice: 20, rating: 3.0, image: "chicken2", discountPercent: 2, duration: "15-30 min",closed:false,availableTime:12),
        Food(title: "Süperix Pizza", price: 15.00, discountPrice: 45, rating: 1.0, image: "pizza2", discountPercent: 1, duration: "10-50 min",closed:false,availableTime:12),
        Food(title: "Servis Köfte Menü", price: 60.00, discountPrice: 40, rating: 4.9, image: "chicken", discountPercent: 9, duration: "5-30 min",closed:false,availableTime:12),
        Food(title: "El Yapımı Pizza", price: 96.00, discountPrice: 20, rating: 5.0, image: "pizza3", discountPercent: 8, duration: "40-50 min",closed:false,availableTime:12),
    ]
    
    static let deliverydata: [Food] = [
        Food(title: "Süper Tavuk", price: 20.00, discountPrice: 24.0, rating: 4.9, image: "chicken", discountPercent: nil, duration: "5-30 min",closed:false,availableTime:12),
        Food(title: "Ev Yapımı Pizza", price: 96.00, discountPrice: 66.0, rating: 5.0, image: "pizza3", discountPercent: 3, duration: "40-50 min",closed:false,availableTime:12),
        Food(title: "Tavuklu Menü", price: 40.00, discountPrice: 46.0, rating: 3.0, image: "chicken2", discountPercent: nil, duration: "15-30 min",closed:false,availableTime:12),
        Food(title: "Karışık Pizza", price: 32.00, discountPrice: 30.0, rating: 1.0, image: "pizza2", discountPercent: nil, duration: "10-50 min",closed:false,availableTime:12),
        Food(title: "Karışık Salata", price: 67.00, discountPrice: 90.0, rating: 4.3, image: "food", discountPercent: nil, duration: "10-35 min",closed:false,availableTime:12),
        Food(title: "Karışık Pizza", price: 96.00, discountPrice: 82.0, rating: 5.0, image: "rice", discountPercent: nil, duration: "20-45 min",closed:false,availableTime:12),
        Food(title: "Ev Yapımı Pizza", price: 60.00, discountPrice: 60.0, rating: 2.2, image: "pizza-1", discountPercent: 2, duration: "20-30 min",closed:false,availableTime:12),
    ]
    static let topRatedData: [Food] = [
        Food(title: "Ev Yapımı Tavuk Menü", price: 60.00, discountPrice: 20, rating: 3.0, image: "chicken2", discountPercent: 8, duration: "15-30 min",closed:false,availableTime:12),
        Food(title: "El Yapımı Pizza", price: 30.00, discountPrice: nil, rating: 2.2, image: "pizza-1", discountPercent: nil, duration: "20-30 min",closed:false,availableTime:12),
        Food(title: "Barbekü Pizza", price: 85.00, discountPrice: nil, rating: 1.0, image: "pizza2", discountPercent: nil, duration: "10-50 min",closed:false,availableTime:12),
        Food(title: "Bol Tavuklu", price: 60.00, discountPrice: nil, rating: 4.9, image: "chicken", discountPercent: nil, duration: "5-30 min",closed:false,availableTime:12),
       
        Food(title: "Yeşil Salata", price: 54.00, discountPrice: 24, rating: 4.3, image: "food", discountPercent: 6, duration: "10-35 min",closed:true,availableTime:8),
        Food(title: "Süperix Karışık Pizza", price: 34.00, discountPrice: nil, rating: 5.0, image: "rice", discountPercent: nil, duration: "20-45 min",closed:false,availableTime:12),
        Food(title: "Anne Yapımı Pizza", price: 96.00, discountPrice: nil, rating: 5.0, image: "pizza3", discountPercent: nil, duration: "40-50 min",closed:false,availableTime:12),
    ]
    static let popularData: [Food] = [
        Food(title: "Şefin Özel Pizzası", price: 96.00, discountPrice: 54.0, rating: 5.0, image: "pizza3", discountPercent: 3, duration: "40-50 min",closed:true,availableTime:11),
        Food(title: "Tavuklu Özel", price: 40.00, discountPrice: 84.0, rating: 3.0, image: "chicken2", discountPercent: 1, duration: "15-30 min",closed:false,availableTime:8),
        Food(title: "Özel Salata", price: 54.00, discountPrice: 55.0, rating: 4.3, image: "food", discountPercent: 7, duration: "10-35 min",closed:false,availableTime:12),
        Food(title: "Ev Yapımı Tavuk", price: 60.00, discountPrice: 86.0, rating: 4.9, image: "chicken", discountPercent: 5, duration: "5-30 min",closed:false,availableTime:12),
        Food(title: "Özel Pizza", price: 20.00, discountPrice: 24.0, rating: 2.2, image: "pizza-1", discountPercent: 2, duration: "20-30 min",closed:false,availableTime:12),
        Food(title: "El Emeği Pizza", price: 15.00, discountPrice: 34.0, rating: 1.0, image: "pizza2", discountPercent: 4, duration: "10-50 min",closed:false,availableTime:12),
        Food(title: "Japon İşi", price: 34.00, discountPrice: 50.0, rating: 5.0, image: "rice", discountPercent: 3, duration: "20-45 min",closed:false,availableTime:12),
    ]
    static let restaurantsData: [Food] = [
       
        Food(title: "Süper Karışık Pizza", price: 15.00, discountPrice: 50.0, rating: 4.0, image: "pizza2", discountPercent: 4, duration: "10-50 min",closed:true,availableTime:8),
        Food(title: "Ton Balıklı Pizza", price: 34.00, discountPrice: 40.0, rating: 5.0, image: "pizza-1", discountPercent: 3, duration: "20-45 min",closed:false,availableTime:12),
        Food(title: "Sofradan Sarma", price: 60.00, discountPrice: nil, rating: 4.9, image: "chicken", discountPercent: nil, duration: "5-30 min",closed:false,availableTime:11),
        Food(title: "Ev Yemeği", price: 96.00, discountPrice: 70.0, rating: 5.0, image: "pizza3", discountPercent: 3, duration: "40-50 min",closed:false,availableTime:9),
       
        Food(title: "Çoban Salata", price: 54.00, discountPrice: 58.0, rating: 4.3, image: "food", discountPercent: 7, duration: "10-35 min",closed:true,availableTime:8),
        Food(title: "Tavuklu Pizza", price: 40.00, discountPrice: 70.0, rating: 3.0, image: "chicken2", discountPercent: 1, duration: "15-30 min",closed:false,availableTime:9),
        Food(title: "Karışık Pizza", price: 20.00, discountPrice: 32.0, rating: 2.2, image: "pizza-1", discountPercent: 2, duration: "20-30 min",closed:true,availableTime:11),
    ]

}
struct FoodItem{
    var title: String
    var description:String
    var price: Double
    var discountPrice: Double?
    var image: String?
    var available: Bool
}
struct FoodSection{
    var sectionName: String
    var sectionItems:[FoodItem]
    
    static let specialOffer:[FoodItem] = [
        FoodItem(title: "Noodle Kovası", description: "Ekstra büyük", price: 66.0, discountPrice: 59.4, image: "food", available:true),
        FoodItem(title: "Nugget", description: "6 parça", price: 120.0, discountPrice: 27, image: "chicken2", available:true),
        FoodItem(title: "Pacherko", description: "Tavuk, soğan", price: 200.0, discountPrice: nil, image: "pizza3", available:true)
    ]
    
    
    static let specialPackage:[FoodItem] = [
        FoodItem(title: "Noodle Kovası", description: "", price: 66.0, discountPrice: 59.4, image: nil, available:false),
        FoodItem(title: "Sosisli Pizza ", description: "Tavuk eti, sos", price: 55, discountPrice: nil, image: "pizza3", available:true),
        FoodItem(title: "Margarita Pizza", description: "Dana eti, sos, pepperoni.", price: 66, discountPrice: nil, image: "pizza", available:true),
        FoodItem(title: "Panchito Pizza ", description: "Dana eti, sos", price: 55, discountPrice: 50, image: "pizza2", available:false),
        FoodItem(title: "Nugget", description: "6 parça", price: 120.0, discountPrice: 27, image: nil, available:true),
        FoodItem(title: "Pacherko", description: "", price: 200.0, discountPrice: nil, image: nil, available:false)
    ]
    static let pizzamanSpecial:[FoodItem] = [
        FoodItem(title: "Crisibreezi Pizza", description: "Tavuk, soya sosu, brisket, ham, pepperoni, mortadella", price: 30.0, discountPrice: nil, image: "pizza", available:true),
        FoodItem(title: "Gretaben Pizza", description: "Tavuk, tatlı biber, pepperoni.", price: 66, discountPrice: nil, image: "pizza2", available:true),
        FoodItem(title: "Kersame Pizza ", description: "Tavuk, soğan", price: 55, discountPrice: 30, image: "pizza3", available:false),
        FoodItem(title: "Pepa Babe Pizza", description: "Soğan, tavuk, pepperoni.", price: 66, discountPrice: nil, image: "pizza", available:true),
        FoodItem(title: "Panchito Pizza ", description: "Dana eti, tavuk", price: 55, discountPrice: nil, image: "pizza2", available:true),
        FoodItem(title: "Tavuklu", description: "Özel soslu", price: 55, discountPrice: nil, image: nil, available:true),
        FoodItem(title: "Geleneksel Pizza ", description: "Dana eti, tavuk, tuna, barbekü, sos", price:72, discountPrice: nil, image: "pizza3", available:true),
    ]
    static let veganBites:[FoodItem] = [
        FoodItem(title: "Ekstra Mushroom Pizza", description: "Mushroom(x2), soğan", price: 50.0, discountPrice: nil, image: "pizza3", available:true),
        FoodItem(title: "Mushroom Pizza", description: "Mushroom, soğan", price: 50.0, discountPrice: 45, image: "pizza2", available:false),
    ]
    static let meatBites:[FoodItem] = [
        FoodItem(title: "Günlük Taze Pizza", description: "Tavuk parçaları, soğan, yeşil biber.", price: 50.0, discountPrice: nil, image: "pizza", available:true),
        FoodItem(title: "Dana Etli Pizza", description: "Dana eti, soğan, tatlı mısır", price: 55.0, discountPrice: nil, image: "pizza3", available:true)
    ]
    static let combos:[FoodItem] = [
        FoodItem(title: "Mini Kova", description: "Atıştırmalık için!", price: 66.0, discountPrice: nil, image: "pizza", available:true),
        FoodItem(title: "Maxi Kova", description: "Doyurucu lezzet için!", price: 110.0, discountPrice: nil, image: "pizza2", available:true),
        FoodItem(title: "Tavuk Pilav Menü", description: "Lezzetli tavuk yanında pilav", price: 88.0, discountPrice: 45, image: "chicken", available:true),
    ]
    
    static let sectionArray:[FoodSection] = [
        FoodSection(sectionName: "Özel Seçim", sectionItems: specialOffer),
        FoodSection(sectionName: "Özel Paket", sectionItems: specialPackage),
        FoodSection(sectionName: "BurgerBuffs Specials", sectionItems: pizzamanSpecial),
        FoodSection(sectionName: "Vegan Menüleri", sectionItems: veganBites),
        FoodSection(sectionName: "Et Menüleri", sectionItems: meatBites),
        FoodSection(sectionName: "Menüler", sectionItems: combos),
        FoodSection(sectionName: "Çocuklar İçin", sectionItems: combos),
        FoodSection(sectionName: "Tavuk", sectionItems: combos),
        FoodSection(sectionName: "Aperatifler", sectionItems: combos),
    ]
}
