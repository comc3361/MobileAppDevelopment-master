//
//  ViewController.swift
//  temp_wear
//
//  Created by Connor Flynn Mcguinness on 9/22/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var entryConnect: UITextField!
    
    @IBAction func tempEntry(sender: AnyObject) {
        responseLabel.text = "It's hot out!"
    }
    @IBOutlet weak var responseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

