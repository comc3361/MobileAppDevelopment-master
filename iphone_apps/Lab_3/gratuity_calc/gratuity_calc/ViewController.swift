//
//  ViewController.swift
//  gratuity_calc
//
//  Created by Connor McGuinness on 9/30/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var checkAmount: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var people: UITextField!
    @IBOutlet weak var tipDue: UILabel!
    @IBOutlet weak var totalDue: UILabel!
    @IBOutlet weak var totalDuePerPerson: UILabel!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    func updateTipTotals() {
        let amount = (checkAmount.text as NSString).floatValue
        let pct = (tipPercent.text as NSString).floatValue/100
        let numberOfPeople = people.text.toInt()
        let tip = amount * pct
        let total = amount + tip
        var personTotal : Float = 0.0
        if numberOfPeople != nil {
            if numberOfPeople! > 0 {
                personTotal = total / Float(numberOfPeople!)
            }
            else {
                let alert = UIAlertController(title: "Error", message: "# Of People must be greater than 0", preferredStyle: UIAlertControllerStyle.Alert)
                let cancelAction = UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
                    alert.addAction(cancelAction)
                    
                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { action in
                    self.people.text = "1"
                    self.updateTipTotals()
                })
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }
        
    
    
    
    var currencyFormatter = NSNumberFormatter()
    currencyFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
    tipDue.text = currencyFormatter.stringFromNumber(tip)
    totalDue.text = currencyFormatter.stringFromNumber(total)
    
    totalDuePerPerson.text = currencyFormatter.stringFromNumber(personTotal)

    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateTipTotals()
    }
    
    
    

    override func viewDidLoad() {
        checkAmount.delegate=self
        tipPercent.delegate=self
        people.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

