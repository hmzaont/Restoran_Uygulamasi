//
//  AboutHeaderView.swift
//  BoltFood
//
//  Created by Hamza ONAT on 25\05\2024.
//

import UIKit

class AboutHeaderView: UITableViewHeaderFooterView {

    static let reuseableId: String = "AboutHeaderView"
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: AboutHeaderView.reuseableId)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let versionLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = color.black
        lb.text = "Versiyon FI.3.28"
        lb.font = UIFont(name: font.semi_bold.rawValue, size: 16)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    let buildLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = color.grey
        lb.text = "Build versiyon: 11443383.4234327564 \nCodepush versiyon:   --"
        lb.font = UIFont(name: font.light.rawValue, size: 13)
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    let vStack: UIStackView = {
        let sv = UIStackView()
        sv.backgroundColor = .white
        sv.axis = .vertical
        sv.spacing = 15.0
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    func setupViews(){
        contentView.addSubview(vStack)
        [versionLabel,buildLabel].forEach {
            vStack.addArrangedSubview($0)
        }
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: contentView.topAnchor),
//            vStack.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            vStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            vStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            vStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
            
        ])
    }
}
