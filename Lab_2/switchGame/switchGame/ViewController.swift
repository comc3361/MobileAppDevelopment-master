//
//  ViewController.swift
//  switchGame
//
//  Created by Connor Flynn Mcguinness on 9/10/15.
//  Copyright (c) 2015 Connor Flynn Mcguinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageControl: UISegmentedControl!
    
    func updateCaps () {
        if capitalSwitch.on
        {
            titleLabel.text = titleLabel.text?.uppercaseString
            
        } else {
            titleLabel.text = titleLabel.text?.lowercaseString
        }
        
    }
    
    func updateImage () {
        if imageControl.selectedSegmentIndex == 0
        {
            titleLabel.text = "World of Warcraft"
            gameImage.image = UIImage(named: "rpg")
        }
            
        else if imageControl.selectedSegmentIndex == 1
        {
            titleLabel.text = "Counter Strike 1.6"
            gameImage.image = UIImage(named: "fps")
        }
        
    }
    
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    @IBAction func changeFontSize(sender: UISlider) {
        let fontSize = sender.value // float
        fontSizeLabel.text = String(format: "%.0f", fontSize) // convert foat to String
        let fontSizeCGFloat = CGFloat(fontSize) // convert float to CGFloat
        titleLabel.font = UIFont.systemFontOfSize(fontSizeCGFloat) // create a UIFont object and assign to the font property
    }
    
    @IBAction func changeInfo(sender: UISegmentedControl)
    {
        updateImage()
        updateCaps()
    }
    
    @IBAction func updateFont(sender: UISwitch) {
        updateCaps()
        
    }
    
    @IBOutlet weak var capitalSwitch: UISwitch!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var gameImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

