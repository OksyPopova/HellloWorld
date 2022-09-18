//
//  ViewController.swift
//  HellloWorld
//
//  Created by Оксана Попова on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLable: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLable.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show greeting")
    }
    
    @IBAction func greetingButtonDidTaaped() {
        greetingLable.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLable.isHidden ? "Show Greeting" : "Hide Greeting"
        )
        
    }
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}
