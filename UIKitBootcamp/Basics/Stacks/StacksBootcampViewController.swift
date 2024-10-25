//
//  StacksBootcampViewController.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 24/10/24.
//

import UIKit

class StacksBootcampViewController: UIViewController {
    
    private var stackView: UIStackView! = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let rect1 = createRectangle(color: .red)
        let rect2 = createRectangle(color: .blue)
        let rect3 = createRectangle(color: .green)
        stackView.addArrangedSubview(rect1)
        stackView.addArrangedSubview(rect2)
        stackView.addArrangedSubview(rect3)
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        
    }
    private func createRectangle(color: UIColor) -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.backgroundColor = color
        view.layer.cornerRadius = 10
        return view
    }
}

#Preview {
    StacksBootcampViewController()
}
