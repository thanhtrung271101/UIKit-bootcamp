//
//  ScrollBootcampViewController.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 26/10/24.
//

import UIKit

class ScrollBootcampViewController: UIViewController {

    private var scrollView = UIScrollView()
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    private let rectHeight: CGFloat = 200
    private let numberOfItems: Int = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1..<numberOfItems {
            let rect = createRectangle(color: .systemGray)
            stackView.addArrangedSubview(rect)
        }
        view.addSubview(scrollView)
        scrollView.delegate = self
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        scrollView.contentSize.height = (rectHeight * CGFloat(numberOfItems)) + 64
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

extension ScrollBootcampViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Did scroll")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("Did end dragging")
    }
}

#Preview {
    ScrollBootcampViewController()
}
