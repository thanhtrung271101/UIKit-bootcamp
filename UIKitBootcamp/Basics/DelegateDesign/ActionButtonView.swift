//
//  ActionButtonView.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 28/10/24.
//

import UIKit

protocol ActionButtonViewDelegate: AnyObject {
    func primaryActionTapped()
    func secondaryActionTapped()
}

class ActionButtonView: UIView {
    
    weak var delegate : ActionButtonViewDelegate?

    private var primaryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Primary Action", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        return button
    }()
    
    private var secondaryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Secondary Action", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        
        addSubview(primaryButton)
        primaryButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        primaryButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        primaryButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        primaryButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        addSubview(secondaryButton)
        secondaryButton.topAnchor.constraint(equalTo: primaryButton.bottomAnchor, constant: 16).isActive = true
        secondaryButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        primaryButton.addTarget(self, action: #selector(primaryButtonTapped), for: .touchUpInside)
        secondaryButton.addTarget(self, action: #selector(secondaryButtonTapped), for: .touchUpInside)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func primaryButtonTapped() {
        delegate?.primaryActionTapped()
    }
    
    @objc func secondaryButtonTapped() {
        delegate?.secondaryActionTapped()
    }
}

#Preview {
    ActionButtonView()
}
