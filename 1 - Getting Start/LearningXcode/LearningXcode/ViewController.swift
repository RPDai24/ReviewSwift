//
//  ViewController.swift
//  LearningXcode
//
//  Created by hupochuan on 04/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Warnings
//        let x = 4
        // Compiler Errors
//        navigationController.title = "Debugging"
        // Bugs
        var names = ["kkk", "jj"]
        names.removeFirst()
        names.removeFirst()
        names.removeFirst()
        
    }
    
    
}

