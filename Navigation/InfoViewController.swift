//
//  InfoViewController.swift
//  Navigation
//
//  Created by Максим Старцев on 24.12.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    private let alertButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Alert", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapAlertButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .orange
        view.addSubview(alertButton)
        alertButton.center = view.center
    }
    
    @objc func didTapAlertButton() {
        let alertController = UIAlertController(title: "Title", message: "Hello world", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: { _ in print("Ok tapped")}))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: { _ in print("Cancel tapped")}))
        present(alertController, animated: true, completion: nil)
    }
}
