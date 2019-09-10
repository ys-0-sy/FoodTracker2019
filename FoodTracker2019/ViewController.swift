//
//  ViewController.swift
//  FoodTracker2019
//
//  Created by saito on 2019/09/10.
//  Copyright © 2019 yuta saito. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    // MARK: Actions
    @IBAction func setDefalutLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Defalut Text"
    }
    
}

