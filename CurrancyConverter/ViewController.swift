//
//  ViewController.swift
//  CurrancyConverter
//
//  Created by Quintin Gunter on 2/1/17.
//  Copyright © 2017 Quintin Gunter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let inputTextField = inputTextField {
            if let amount = Double(inputTextField.text!) {
                dollarAmount = amount
            }
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
    
    @IBAction func clearTextField(_ sender: UIButton) {
        inputTextField?.text = nil
        poundLabel.text = "\(dollarAmount)"
        yenLabel.text = "\(dollarAmount)"
        euroLabel.text = "\(dollarAmount)"
        
    }
    
    @IBOutlet weak var inputTextField: UITextField?
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let inputTextField = inputTextField {
            inputTextField.delegate = self
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Called when 'return' key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when user taps outside the text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func formattedUnitsSold() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .spellOut
        return numberFormatter.string(from: Double(inputTextField!.text!)! as NSNumber)!
    }
}

