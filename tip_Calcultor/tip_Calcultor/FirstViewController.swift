//
//  ViewController.swift
//  tip_Calcultor
//
//  Created by Ping Hsu on 1/14/19.
//  Copyright © 2019 Ping Hsu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    	
    }
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var howmuchDonate: UITextField!
    
    @IBOutlet weak var donateField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBAction func buttonpressed(_ sender: Any) {
        
        print("I was pressed")
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill=Double(billField.text!) ?? 0
        let tipPercentages=[0.1, 0.18, 0.2]
        let tip=bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total=bill+tip
        tipLabel.text="$\(tip)"
        totalLabel.text="$\(total)"
        tipLabel.text=String(format: "$%.2f", tip)
        totalLabel.text=String(format: "$%.2f", total)
        howmuchDonate.text=String(format: "$%.2f", total)
        
    }
    
    @IBAction func donateChange(_ sender: Any) {
        let bill=Double(donateField.text!) ?? 0
	    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}


