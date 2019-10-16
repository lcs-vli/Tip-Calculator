//
//  ViewController.swift
//  Calculator
//
//  Created by Li, Muchen on 2019-10-10.
//  Copyright © 2019 Li, Muchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties (Outlets)(constants)
    
    @IBOutlet weak var AmountOfBill: UITextField!
    
    @IBOutlet weak var tipPercentage: UITextField!
    
    @IBOutlet weak var sliptBetweenPeople: UITextField!
    
    @IBOutlet weak var tipPerPersonString: UILabel!
    
    @IBOutlet weak var totalTipString: UILabel!
    //MARK: Methods (actions)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }

    @IBAction func calculate(_ sender: Any) {
        //amount of the bill
        let AmountText = AmountOfBill.text!
        let bill = Double(AmountText)!
        
        //amount of the tip
        let tipText = tipPercentage.text!
        let tipPercent1 = Double(tipText)!
        let tipPercent = tipPercent1/100
        
        //number of people
        let totalPeopleText = sliptBetweenPeople.text!
        let totalPeople = Double(totalPeopleText)!
        
        //value of the tip in dollars and cents
        let totalTip = bill * tipPercent
        let totalTipInCent:Double = totalTip * 100
        
        //value of the tip per person
        let tipPerPerson = round(totalTipInCent/totalPeople)/100
        
        totalTipString.text = "$\(totalTip)"
        tipPerPersonString.text = "$\(tipPerPerson)"
    }
    
    
   
}

