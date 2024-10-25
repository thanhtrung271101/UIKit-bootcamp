//
//  TextFieldViewController.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 25/10/24.
//

import UIKit

class TextFieldViewController: UIViewController {
    
    private var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your name"
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 24)
        textField.keyboardType = .emailAddress
        textField.returnKeyType = .search
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textField)
        view.backgroundColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
}

#Preview {
    TextFieldViewController()
}