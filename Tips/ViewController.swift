//
//  ViewController.swift
//  Tips
//
//  Created by Nigel Hunter on 12/18/15.
//  Copyright © 2015 Nigel Hunter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var navigationitem: UINavigationItem!
    
    
    let defaults = NSUserDefaults.standardUserDefaults()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        let defaultTipIndex = defaults.integerForKey("default_tip_index")
        tipControl.selectedSegmentIndex = defaultTipIndex
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        let tipPercentages = [0.18,0.2,0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        }
    
    @IBAction func onTap (sender: AnyObject
        ){
            view.endEditing(true)
    }
    
}