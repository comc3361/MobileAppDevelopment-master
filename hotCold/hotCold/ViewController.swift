//
//  ViewController.swift
//  hotCold
//
//  Created by Connor Flynn Mcguinness on 9/1/15.
//  Copyright (c) 2015 Connor Flynn Mcguinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var artImage: UIImageView!
    
    @IBAction func homeButton(sender: UIButton) {
        artImage.image = UIImage(named: "title.png")
        messageText.text = "Click either button to start again!"
        uppermessageText.text = ""
    }
    @IBOutlet weak var uppermessageText: UILabel!
    @IBOutlet weak var messageText: UILabel!
    @IBAction func chooseHot(sender: UIButton) {
        var aNumber = Int(arc4random_uniform(2))
        messageText.text="Click again for another random 'Hot' Picture!"
        if aNumber >= 1 {
            artImage.image = UIImage(named: "hot1.jpeg")
            uppermessageText.text = "Sunset"
        }
        else
        {
            artImage.image = UIImage(named: "hot2.jpeg")
            uppermessageText.text = "Fire"
        }
    }
    
    @IBAction func chooseCold(sender: UIButton) {
        var aNumber = Int(arc4random_uniform(2))
        messageText.text="Click again for another random 'Cold' Picture!"
        if aNumber >= 1 {
            artImage.image = (UIImage(named: "cold1.jpeg"))
            uppermessageText.text = "Ice Cream"
        }
        else
        {
            artImage.image = (UIImage(named: "cold2.jpeg"))
            uppermessageText.text = "Snow"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

