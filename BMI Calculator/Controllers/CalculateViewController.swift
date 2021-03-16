//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSliderLable: UILabel!
    @IBOutlet weak var weightSliderLable: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue = "0.0"
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentValue = String(format: "%.2f" ,sender.value)
        heightSliderLable.text = "\(currentValue)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        weightSliderLable.text = "\(currentValue)Kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        bmiValue = String(format: "%.1f", weight / pow(height,2))
                
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = self.bmiValue
        }
    }
    
}


