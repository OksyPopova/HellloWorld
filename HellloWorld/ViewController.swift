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
    }
    
    @IBAction func greetingButtonDidTaaped() {
        greetingLable.isHidden.toggle()
        greetingButton.setTitle(
            greetingLable.isHidden ? "Show greeting" : "Hide greeting",
            for: .normal
        )
        
    }
    
}
