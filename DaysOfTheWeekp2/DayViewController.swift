//
//  DayViewController.swift
//  DaysOfTheWeekp2
//
//  Created by Xavier on 8/28/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

class DayViewController: UIViewController {
    
    var day = ""
    
    @IBOutlet weak var dayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayLabel.text = "What's Up \(day)!"
    }
    
}
