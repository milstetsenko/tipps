//
//  ViewController.swift
//  tipps
//
//  Created by Milana Stetsenko on 7/29/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipSlider: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var passing = Double(10)
    var xcode_lags = Double(9)
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
        passing = Double(slider.value)
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userDefaults = UserDefaults()
        if let data = userDefaults.object(forKey: "Default from Settings"){
            if let variable = data as? Double{
                passing = Double(variable)
                tipSlider.text = String(format: "%.0f %%", variable)
            }
        }
    }
    
    @IBAction func tipValueChanged(_ sender: Any) {
        tipSlider.text = String(format: "%.0f %%", slider.value )
        
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount
        slider.maximumValue = Float(passing)
        let sliderValue = slider.value
        print(sliderValue)
        let bill = Double(billAmountTextField.text!) ?? 0
        let tip = bill * Double(0.01 ) * Double(slider.value)//tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        // calculate the tip and total
        // Update the tip and totals
        tipPercentageLabel.text = String(format: "$%.0f", tip)
        totalLabel.text = String(format: "$%.0f", total)
    }
}

