//
//  PopularCategoryHeader.swift
//  BoltFood
//
//  Created by Hamza ONAT on 25\05\2024.
//

import UIKit

class MealCategoryHeader: UITableViewHeaderFooterView {

    static let reuseableId: String = "PopularCategoryHeader"
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: MealCategoryHeader.reuseableId)
        setupViews()
        setupConstraints()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    let headingLabel: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.text = "Popüler Kategoriler"
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textColor = color.black
        lb.font = UIFont(name: font.bold.rawValue, size: 18)
        lb.scaleFont()
        return lb
    }()
    func setupViews(){
        contentView.addSubview(headingLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            headingLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            headingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            headingLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            
        ])
    }

}
