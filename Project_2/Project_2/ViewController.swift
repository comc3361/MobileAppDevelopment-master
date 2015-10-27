//
//  ViewController.swift
//  Project_2
//
//  Created by Connor McGuinness on 10/26/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    @IBOutlet weak var playButton: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    
    
    @IBAction func playAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("a", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        //playButton.enabled = false
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

