//
//  HelloSwiftViewController.swift
//  HelloSwift
//
//  Created by Polina on 25.02.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class HelloSwiftViewController: UIViewController {


    @IBOutlet var nameInPut: UITextField!

    
    @IBAction func helloButtonPressed(_ sender: UIButton) {
        guard nameInPut.text?.isEmpty == false, let username = nameInPut.text else {
            return
        }
        let greeting = "Здраствуйте, \(username)"
        
        let alert = UIAlertController(title: "Ура", message: greeting, preferredStyle: .alert)
        let hellowAction = UIAlertAction(title: "Привет", style:.default) {
            action in print("Пользовательн нажал \(action)")
        }
        alert.addAction(hellowAction)
        
        present(alert, animated: true, completion: nil)
   
    }
    
    
    
    
    
}
