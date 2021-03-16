//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Admin on 3/9/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    

}
