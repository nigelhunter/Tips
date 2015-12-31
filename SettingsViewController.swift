//
//  SettingsViewController.swift
//  Tips
//
//  Created by Nigel Hunter on 12/19/15.
//  Copyright © 2015 Nigel Hunter. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var defaulTipPercentLabel: UILabel!
    @IBOutlet weak var defautTipPercentages: UISegmentedControl!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewWillDisappear(animated: Bool) {
        
        let defaultTipPercentages = [0.18,0.2,0.22]
        let defaultTipPercentage = defaultTipPercentages[defautTipPercentages.selectedSegmentIndex]
        
        defaults.setInteger(defautTipPercentages.selectedSegmentIndex, forKey: "default_tip_index")
    }
    
}


