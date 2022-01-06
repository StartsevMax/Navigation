//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Максим Старцев on 26.12.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let showStatusButton: UIButton = {
        let button = UIButton.init(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Show status", for: .normal)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonPressed() {
        print("\(userStatus.text ?? "Status is empty")")
    }
    
    let userName: UILabel = {
        let label = UILabel.init(frame: CGRect(x: 230, y: 100, width: 100, height: 50))
        label.text = "Hipster cat"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let userStatus: UILabel = {
        let label = UILabel.init(frame: CGRect(x: 230, y: 150, width: 100, height: 50))
        label.text = "Waiting for something..."
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        return label
    }()
    
    let avatar: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 16, y: 90, width: 200, height: 200))
//        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "the_rock")
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.backgroundColor = .lightGray
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        addSubview(showStatusButton)
        addSubview(avatar)
        addSubview(userName)
        addSubview(userStatus)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
