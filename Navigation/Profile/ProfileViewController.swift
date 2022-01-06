//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Максим Старцев on 17.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        return profileHeaderView
    }()
       
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        view.addSubview(profileHeaderView)
    }
    
    override func loadView() {
        let view = ProfileHeaderView()
        self.view = view
        NSLayoutConstraint.activate([
            view.showStatusButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            view.showStatusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            view.showStatusButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
