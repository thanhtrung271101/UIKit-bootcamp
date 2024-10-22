//
//  ViewController.swift
//  UIKitBootcamp
//
//  Created by Thành Trung on 21/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var primaryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        
    }
    func greetUser(_ name: String) {
        greetingLabel.text = "Hello, \(name)!"
    }

    @IBAction func primaryButtonTapped(_ sender: Any) {
        print("DEBUG: Primary button tapped")
        greetUser("Thanh Trung, how are you today")
        view.backgroundColor = .systemBackground
    }
}

