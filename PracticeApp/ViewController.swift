//
//  ViewController.swift
//  PracticeApp
//
//  Created by Zoilo Mercedes on 12/7/18.
//  Copyright © 2018 Zoilo Mercedes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var hoodie: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let someLabel = UILabel()
        someLabel.translatesAutoresizingMaskIntoConstraints = false
        someLabel.text = "NEW NEW shit"
        
        view.addSubview(someLabel)
        someLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        someLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        someLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        someLabel.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        hoodie.text = "wuz poppin"
        inputField.becomeFirstResponder()
        
        // associates text field with delegate object (this class)
        inputField.delegate = self
    }

    @IBAction func buttonTapped(_ sender: Any) {
        
        var newText = ""
        
        newText += hoodie.text ?? ""
        newText += "\n"
        newText += inputField.text ?? ""
        
        hoodie.numberOfLines += 1
        hoodie.text = newText
        inputField.resignFirstResponder()
        inputField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        inputField.resignFirstResponder()
    }
    
    // triggered on pressing return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false // creates line break on true
    }
    
}
