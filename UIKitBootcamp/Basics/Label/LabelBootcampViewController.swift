//
//  LabelBootcampViewController.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 24/10/24.
//

import UIKit

class LabelBootcampViewController: UIViewController {

    private var textLabel = UILabel()
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Subtitle hello, i am thanh trung"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .light)
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        textLabel.text = "Hello, World!"
        textLabel.font = .systemFont(ofSize: 32, weight: .bold)
        textLabel.textColor = .white
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.centerYAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 8).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}

#Preview {
    LabelBootcampViewController()
}
