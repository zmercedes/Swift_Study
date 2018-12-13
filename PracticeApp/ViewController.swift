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
        // Do any additional setup after loading the view, typically from a nib.
        
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
