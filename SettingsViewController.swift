//
//  SettingsViewController.swift
//  tipps
//
//  Created by Milana Stetsenko on 7/29/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit




class SettingsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var PercentageDefault: UITextField!
      override func viewDidLoad() {
            super.viewDidLoad()
    }
    @IBAction func UserDefaultPercentage(_ sender: Any) {
    let defaults = UserDefaults()
    let text = Double(PercentageDefault.text!) ?? 0
    defaults.set(text, forKey: "Default from Settings")
    
    }

    

  
}
