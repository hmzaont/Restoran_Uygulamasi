//
//  DeliveryAddressCell.swift
//  BoltFood
//
//  Created by Hamza ONAT on 28\05\2024.
//

import UIKit

class DeliveryAddressCell: UITableViewCell {

    var data : DeliveryAddress? {
        didSet{
            manageData()
        }
    }
    static let reuseableId: String = "DeliveryAddress"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: DeliveryAddressCell.reuseableId)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let locationLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = color.black
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont(name: "EuclidCircularB-Regular", size: 14)
        lb.scaleFont()
        return lb
    }()
    let areaLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = color.grey
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont(name: "EuclidCircularB-Light", size: 11)
        lb.scaleFont()
        return lb
    }()
    let locationContainer: UIStackView = {
        let sv = UIStackView(frame: .zero)
        sv.axis = .vertical
        sv.spacing = 2.0
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    let icon : UIImageView = {
        var iv = UIImageView()
        iv.tintColor = .black
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
   
    let selectedIcon : UIImageView = {
        var iv = UIImageView()
        iv.tintColor = color.green
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.isHidden = true
        iv.alpha = 0
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    func setupViews(){
        [locationContainer,icon,selectedIcon].forEach {
            contentView.addSubview($0)
        }
        [locationLabel,areaLabel].forEach{
            locationContainer.addArrangedSubview($0)
        }
    }
    func setupConstraints(){
        
        NSLayoutConstraint.activate([
            
            icon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            icon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            icon.widthAnchor.constraint(equalToConstant: 20),
            icon.heightAnchor.constraint(equalTo: icon.widthAnchor),
            
            locationContainer.centerYAnchor.constraint(equalTo: icon.centerYAnchor),
            locationContainer.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 16),
            locationContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            selectedIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            selectedIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            selectedIcon.widthAnchor.constraint(equalToConstant: 30),
            selectedIcon.heightAnchor.constraint(equalTo: selectedIcon.widthAnchor),
            
        ])
    }
    func manageData(){
        guard let item = data else { return }
        locationLabel.text = item.location
        icon.image = UIImage(named: item.icon)
        if item.area != nil {
            areaLabel.text = item.area
        }
    }

}
