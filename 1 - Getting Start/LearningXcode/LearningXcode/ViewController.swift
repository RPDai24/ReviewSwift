//
//  ViewController.swift
//  LearningXcode
//
//  Created by hupochuan on 04/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myButton: UIButton!
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.tintColor = .red
        
    }
    
    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
}

