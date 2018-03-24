//
//  ViewController.swift
//  fuelCalculator
//
//  Created by Filip on 24.03.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var milageField: UITextField!
    
    @IBOutlet weak var fuelField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: Any) {
    
        if let milage = milageField.text {
            
            if let fuel = fuelField.text {
                
                if  milage.isEmpty ||  fuel.isEmpty{
                    resultLabel.text = ("Did You even drive?")
                    
                }
                else {
                    let milagefield = Float(milage)!
                    let fuelfield = Float(fuel)!
                    
                    if milagefield > 0 && fuelfield > 0 {
                        
                        let result = (fuelfield / milagefield) * 100
                        
                        resultLabel.text = "The car burned " + String(format: "%.2f", result) + " liters per km!"
                    }
                    else {
                        resultLabel.text = ("Did You even drive?")
                    }
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

