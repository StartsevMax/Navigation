//
//  TabBar.swift
//  Navigation
//
//  Created by Максим Старцев on 16.12.2021.
//

import UIKit


class TabBar: UITabBarController {
    init(ViewControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = viewControllers
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
