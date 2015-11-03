//
//  ViewController.swift
//  animation
//
//  Created by Connor Flynn Mcguinness on 10/6/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var delta = CGPointMake(12, 4) // initialize delta to move 12px horizontally, 4px vertically
    var ballRadius =  CGFloat() // radius of the image
    var timer = NSTimer() // animation timer
    var translation = CGPointMake(0.0, 0.0) //how many pixels the image will move
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func moveImage() {
        let duration = Double(slider.value)
        UIView.beginAnimations("image", context: nil)
        UIView.animateWithDuration(duration, animations:
            {self.imageView.transform = CGAffineTransformMakeTranslation(self.translation.x, self.translation.y)
            self.translation.x += self.delta.x
            self.translation.y += self.delta.y
        })
        UIView.commitAnimations()
        
        imageView.center = CGPointMake(imageView.center.x + delta.x, imageView.center.y + delta.y)
        // sets center to center + delta
        if imageView.center.x + translation.x > view.bounds.size.width - ballRadius || imageView.center.x + translation.x < ballRadius {
            delta.x = -delta.x
        } //if horizontally too far, will not let any edge roll over
        if imageView.center.y + translation.y > view.bounds.size.height - ballRadius || imageView.center.y + translation.y < ballRadius {
            delta.y = -delta.y
        }//if vertically past bounds, reverse direction
    } //simply move image, avoid bounds
    

    
    
    @IBAction func silderMoved(sender: AnyObject) {
        timer.invalidate()
        changeSliderValue()
    }
    
    @IBAction func changeSliderValue() {
        sliderLabel.text = String(format: "%.2f", slider.value)
        timer = NSTimer.scheduledTimerWithTimeInterval(Double(slider.value), target: self, selector: "moveImage", userInfo: nil, repeats: true)
    }
    
    
    
    override func viewDidLoad() {
        ballRadius = imageView.frame.size.width/2
        changeSliderValue()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

