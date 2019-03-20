//
//  ViewController.swift
//  GetMyAge
//
//  Created by Khaled Marouani on 3/20/19.
//  Copyright © 2019 Khaled Marouani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var LaDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buGetAge(_ sender: Any) {
        
        let CurrentDate = Date()
        let UserDOB = DatePicker.date
        let calender = Calendar.current
        let component = calender.dateComponents([Calendar.Component.day], from: UserDOB, to: CurrentDate)
        
        let Years = Int(component.day!/356)
        let Months = Int(component.day! - (Years * 356))/30
        let Days:Int = component.day! - ((Months * 30) + (Years * 356 ))
        
        LaDisplay.text = "Your Age in days = \(Years) Years, and \(Months) Months , and \(Days) Days"
    }
    
}

