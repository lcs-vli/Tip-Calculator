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
    
    @IBOutlet weak var sliptBetweenPeople: UITextField!
    
    @IBOutlet weak var tipPerPersonString: UILabel!
    
    @IBOutlet weak var totalTipString: UILabel!
    
    var tipPercent = 0.15
    
    //MARK: Methods (actions)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    
    @IBAction func five(_ sender: Any) {
        tipPercent = 0.05
        calculate()
    }
    
    @IBAction func ten(_ sender: Any) {
        tipPercent = 0.10
        calculate()
    }
    
    @IBAction func fifteen(_ sender: Any) {
        tipPercent = 0.15
        calculate()
    }
    
    @IBAction func twenty(_ sender: Any) {
        tipPercent = 0.20
        calculate()
    }
    
    func calculate()  {
        //get user input
        guard let AmountText = AmountOfBill.text else {
            return
        }
        guard let totalPeopleText = sliptBetweenPeople.text else {
            return
        }
        
       //convert all values into doubl
        guard let bill = Double(AmountText) else {
            return
        }
        guard let totalPeople = Double(totalPeopleText) else {
            return
        }
       
        //value of the tip in dollars
        let totalTip = bill * tipPercent
        
        //value of the tip per person
        let tipPerPerson = round(totalTip/totalPeople)
        
        totalTipString.text = "$\(totalTip)"
        tipPerPersonString.text = "$\(tipPerPerson)"
    }
    
   
}

