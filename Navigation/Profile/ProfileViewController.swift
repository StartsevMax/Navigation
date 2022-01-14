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
    }

    override func loadView() {
        self.view = profileHeaderView
    }
}
