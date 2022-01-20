//
//  PostViewController.swift
//  Navigation
//
//  Created by Максим Старцев on 22.12.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    init(post: Post){
        super.init(nibName: nil, bundle: nil)
        title = post.title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .systemGreen
        configureItems()
        
    }
    
    func configureItems() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(didInfoButtonPressed))
    }
    
    @objc func didInfoButtonPressed() {
        present(InfoViewController(), animated: true, completion: nil)
    }
}
