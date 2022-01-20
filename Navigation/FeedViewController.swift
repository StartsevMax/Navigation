//
//  FeedViewController.swift
//  Navigation
//
//  Created by Максим Старцев on 17.12.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .red
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        let button1 = UIButton()
        button1.setTitle("1", for: .normal)
        button1.backgroundColor = .cyan
        button1.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        let button2 = UIButton()
        button2.setTitle("2", for: .normal)
        button2.backgroundColor = .cyan
        button2.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        return stackView
        
    }()
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Post", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
//        view.addSubview(button)
        view.addSubview(stackView)
        setupStackViewConstraints()
        title = "Feed"
    }
    
    func setupStackViewConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    @objc func didTapButton() {
        let postVC = PostViewController(post: Post(title: "News"))
        navigationController?.pushViewController(postVC, animated: true)
    }
}
