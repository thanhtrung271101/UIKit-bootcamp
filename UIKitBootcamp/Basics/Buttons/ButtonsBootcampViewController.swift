//
//  ButtonsBootcampViewController.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 24/10/24.
//

import UIKit

class ButtonsBootcampViewController: UIViewController {
    
    private lazy var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Name", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(showNameTapped), for: .touchUpInside)
        return button
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Thành Trung"
        label.textColor = .red
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        showNameButton.addTarget(self, action: #selector(showNameTapped), for: .touchUpInside)
        view.addSubview(showNameButton)
        showNameButton.translatesAutoresizingMaskIntoConstraints = false
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 16).isActive = true
        
    }
    @objc func showNameTapped() {
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show Name" : "Hide Name"
        showNameButton.setTitle(title, for: .normal)
    }
}

#Preview {
    ButtonsBootcampViewController()
}
