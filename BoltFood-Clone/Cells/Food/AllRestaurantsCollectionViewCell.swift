//
//  AllRestaurantsCollectionViewCell.swift
//  BoltFood
//
//  Created by Hamza ONAT on 27\05\2024.
//

import UIKit

class AllRestaurantsCollectionViewCell: UICollectionViewCell {
    
    var data: Food? {
        didSet{
            manageData()
        }
    }
    
    static let reusableId = "RestaurantsCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        foodDescriptionView.discountedContainer.isHidden = true
        imageDescriptionView.discountContainer.isHidden = true
        imageDescriptionView.overlayView.isHidden = true
    }
    
    let foodDescriptionView: FoodDescriptionDetailsView = {
        let v = FoodDescriptionDetailsView()
        v.foodTitleLabel.font = UIFont(name: font.semi_bold.rawValue, size: 16)
        v.actualPriceLabel.font =  UIFont(name: font.light.rawValue, size: 14)
        v.discountPriceLabel.font =  UIFont(name: font.bold.rawValue, size: 12)
        v.ratingLabel.font = UIFont(name: font.bold.rawValue, size: 14)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let imageDescriptionView: FoodImageDetailsView = {
        let v = FoodImageDetailsView()
        v.discountPercentLabel.font =  UIFont(name: font.semi_bold.rawValue, size: 13)
        v.durationLabel.font =  UIFont(name: font.semi_bold.rawValue, size: 13)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    func setupViews(){
        addSubview(imageDescriptionView)
        addSubview(foodDescriptionView)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            imageDescriptionView.topAnchor.constraint(equalTo: topAnchor),
            imageDescriptionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageDescriptionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageDescriptionView.heightAnchor.constraint(equalToConstant: 160),
            
            foodDescriptionView.topAnchor.constraint(equalTo: imageDescriptionView.bottomAnchor,constant: 15),
            foodDescriptionView.leadingAnchor.constraint(equalTo:leadingAnchor),
            foodDescriptionView.trailingAnchor.constraint(equalTo:trailingAnchor),
            foodDescriptionView.heightAnchor.constraint(equalToConstant: 42),
            
        ])
    }

    func manageData(){
        guard let item = data else { return }
        foodDescriptionView.foodTitleLabel.text = item.title
        foodDescriptionView.ratingLabel.text = "\(item.rating)"
      
        if let discountPrice = item.discountPrice {
            foodDescriptionView.discountPriceLabel.text = "₺\(discountPrice.twoDecimalPlaces())"
        }
        if let discountPercent = item.discountPercent {
            foodDescriptionView.discountedContainer.isHidden = false
            imageDescriptionView.discountContainer.isHidden = false

            foodDescriptionView.actualPriceLabel.attributedText = setupAttributedText("\(item.price.twoDecimalPlaces())")
            imageDescriptionView.discountPercentLabel.text = "−\(discountPercent * 10)%"
        }
        else {
            foodDescriptionView.discountedContainer.isHidden = true
            foodDescriptionView.actualPriceLabel.attributedText =  NSAttributedString(string: "₺\(item.price.twoDecimalPlaces())", attributes: [.foregroundColor: color.black])
            imageDescriptionView.discountContainer.isHidden = true
        }
        
        imageDescriptionView.durationLabel.text = "\(item.duration)"
        imageDescriptionView.foodImage.image = UIImage(named: item.image)
        
        if item.closed == true {
            imageDescriptionView.overlayView.isHidden = false
            imageDescriptionView.closedLabel.isHidden = false
            imageDescriptionView.overlayView.alpha = 1
            imageDescriptionView.closedLabel.alpha = 1
            imageDescriptionView.closedLabel.text = "Şu süre içinde sipariş edilebilir \(item.availableTime):00"
        }
    }
    func setupAttributedText (_ price: String) -> NSAttributedString {
        let text = NSMutableAttributedString(attributedString: NSAttributedString(string: "₺\(price)", attributes: [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue,NSAttributedString.Key.strikethroughColor: color.grey,.foregroundColor: color.grey]))
        return text
    }
}