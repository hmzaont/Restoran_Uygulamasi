//
//  PopularCategoryCell.swift
//  BoltFood
//
//  Created by Hamza ONAT on 27\05\2024.
//

import UIKit

class MealCategoryCell: UITableViewCell {
    static let reuseableId = "PopularCategory"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: MealCategoryCell.reuseableId)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    let categoryLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = color.black
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 1
        lb.scaleFont()
        lb.font = UIFont(name: "EuclidCircularB-Regular", size: 13)
        return lb
    }()
    
    func setupViews(){
        contentView.addSubview(categoryLabel)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            categoryLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            categoryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            categoryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
    
    func setup(for item: MealCategory){
        categoryLabel.text = item.name
    }
}
