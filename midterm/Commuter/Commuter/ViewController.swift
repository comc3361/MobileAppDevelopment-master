//
//  ViewController.swift
//  Commuter
//
//  Created by Connor Flynn Mcguinness on 10/29/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mileAmount: UITextField!
    
    @IBOutlet weak var commuteTime: UILabel!
    
    @IBOutlet weak var gasToPurchase: UILabel!
    
    @IBOutlet weak var changeVehicle: UISegmentedControl!
    
    var milesPerGallon = 24
    
    @IBOutlet weak var monthSwitch: UISwitch!
    
    @IBOutlet weak var vehicleImage: UIImageView!
    
    @IBOutlet weak var gasInTank: UILabel!
    
    func textFieldDidEndEditing(textField: UITextField) {
        var miles = mileAmount.text.toInt()
        if miles > 50 {
            let alert = UIAlertController(title: "Warning", message: "You are traveling further than 50 miles on this trip! Be Careful!", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "Thanks for the warning", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    func updateMiles() {
        if changeVehicle.selectedSegmentIndex == 0 {

            vehicleImage.image = UIImage(named: "car")
            
        var mileTotal = (mileAmount.text as NSString).floatValue
        mileTotal = mileTotal / 20;

        
        
        commuteTime.text = "\(mileTotal) hours"
            
        } else if changeVehicle.selectedSegmentIndex == 1 {
            
            vehicleImage.image = UIImage(named: "bus")
            
            var mileTotal = (mileAmount.text as NSString).floatValue
            mileTotal = mileTotal / 12;
            mileTotal = mileTotal + 0.16;
            
            commuteTime.text = "\(mileTotal) hours"
        } else if changeVehicle.selectedSegmentIndex == 2 {
            
            vehicleImage.image = UIImage(named: "bike")
            
            var mileTotal = (mileAmount.text as NSString).floatValue
            mileTotal = mileTotal / 10;
            
            commuteTime.text = "\(mileTotal) hours"
        }
        
        
    }
    
    func calcGas() {
        if changeVehicle.selectedSegmentIndex == 0 {
        var mileTotal = (mileAmount.text as NSString).floatValue
        mileTotal = mileTotal / 24;
        
        gasToPurchase.text = "\(mileTotal) gallons "
            
        } else if changeVehicle.selectedSegmentIndex == 1 {
            var mileTotal = (mileAmount.text as NSString).floatValue
            mileTotal = mileTotal / 12;
            
            gasToPurchase.text = "\(mileTotal) gallons "
        } else if changeVehicle.selectedSegmentIndex == 2 {
            gasToPurchase.text = "Bikes don't use gas!"
    }
    
    
    }

    @IBAction func gasTank(sender: UISlider) {
        var tank = sender.value
        
        gasInTank.text = String(format: "%.0f", tank)
    }


    @IBAction func calcCommute(sender: UIButton) {
        updateMiles()
        calcGas()
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        mileAmount.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

