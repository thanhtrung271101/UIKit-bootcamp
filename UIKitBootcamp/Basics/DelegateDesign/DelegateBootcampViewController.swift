//
//  DelegateBootcampViewController.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 28/10/24.
//

import UIKit

class DelegateBootcampViewController: UIViewController {
    
    private var actionButtonView = ActionButtonView()
    
    private var textLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        
        view.addSubview(actionButtonView)
        actionButtonView.layer.shadowColor = UIColor.black.cgColor
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        actionButtonView.delegate = self
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textLabel.text = "Primary action button tapped"
        textLabel.isHidden = true
        
    }
}
extension DelegateBootcampViewController: ActionButtonViewDelegate {
    func primaryActionTapped() {
        textLabel.isHidden = false
    }
    
    func secondaryActionTapped() {
        textLabel.isHidden = true
    }
}
