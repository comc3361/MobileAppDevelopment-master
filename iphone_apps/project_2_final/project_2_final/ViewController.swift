//
//  ViewController.swift
//  project_2_final
//
//  Created by Connor McGuinness on 10/28/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var csButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var dsButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var fButton: UIButton!
    @IBOutlet weak var fsButton: UIButton!
    @IBOutlet weak var gButton: UIButton!
    @IBOutlet weak var gsButton: UIButton!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var asButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    
    //var audioPlayer_cs: AVAudioPlayer?
    
    @IBAction func cAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("c00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func csAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("cS00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func dAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("d00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func dsAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("dS00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func eAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("e00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func fAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("f00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func fsAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("fS00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func gAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("g00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func gsAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("gS00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }

    @IBAction func aAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("a00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func asAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("aS00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
    
    @IBAction func bAudio(sender: UIButton) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("b00", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
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

