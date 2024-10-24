//
//  ShapesBootcampViewController.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 24/10/24.
//

import UIKit

class ShapesBootcampViewController: UIViewController {
    
    private var rect: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 10
        return view
    }()
    
    private var circle: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.layer.cornerRadius = 50
        return view
    }()
    
    private var triangle: UIView = {
        let view = UIView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Rect
        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // Circle
        view.addSubview(circle)
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.topAnchor.constraint(equalTo: rect.bottomAnchor, constant: 16).isActive = true
        circle.leadingAnchor.constraint(equalTo: rect.leadingAnchor).isActive = true
        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // Triangle
        view.addSubview(triangle)
        triangle.translatesAutoresizingMaskIntoConstraints = false
        triangle.topAnchor.constraint(equalTo: circle.bottomAnchor, constant: 16).isActive = true
        triangle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        triangle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        triangle.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        addTriangleShape(to: triangle)
    }
    
    private func addTriangleShape(to view: UIView) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: view.bounds.width / 2, y: 0))
        path.addLine(to: CGPoint(x: 0, y: view.bounds.height))
        path.addLine(to: CGPoint(x: view.bounds.width, y: view.bounds.height))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.green.cgColor
        
        view.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
        view.layer.addSublayer(shapeLayer)
    }
}

#Preview {
    ShapesBootcampViewController()
}
