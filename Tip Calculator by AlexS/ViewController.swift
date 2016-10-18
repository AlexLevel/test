//
//  ViewController.swift
//  Tip Calculator by AlexS
//
//  Created by Alex Stepakov on 10/17/16.
//  Copyright © 2016 Alex Stepakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalEach: UILabel!
    @IBOutlet weak var qtyField: UITextField!
    
    @IBOutlet weak var billField: UITextField!
//    @IBOutlet weak var howManyPeaopleField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.1, 0.15, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
//        let howManyPeaople = Double(howManyPeaopleField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
//        let oweEach = ((bill + tip)/howManyPeaople ) ?? 0
        
        tipLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
//        totalEach.text = String(format: "$%.2f" , oweEach)
        
        
        
    }
}

