//
//  ViewController.swift
//  guessTheChord
//
//  Created by Connor McGuinness on 10/1/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuess: UITextField!
    
    @IBOutlet weak var chordImage: UIImageView!
    
    @IBOutlet weak var guessNumber: UITextField!
    
    @IBOutlet weak var resultText: UITextView!
    
    var guesses : UInt = 8
    var number : UInt32 = 0
    var gameOver = false
    let MAX_GUESSES : UInt = 0
    
    func consoleOut(text : String) {
        resultText.text = resultText.text + text
    }
    
    func createNewNumber() -> UInt32 {
        return arc4random_uniform(100) + 1
    }
    
    func clearText() {
        userGuess.text = ""
    }
    
    
    @IBAction func guess(sender: UIButton) {
        if gameOver == true {
            var newGame = userGuess.text
            if newGame == "Y" {
                gameOver = false
                resultText.text = ""
                number = createNewNumber()
                resultText.text = ("I'm thinking of a number...")
                return
            }
        }
        var possibleGuess : Int? = userGuess.text.toInt()
        if var guess = possibleGuess {
            if UInt32(guess) > number {
                --guesses
                resultText.text = ("Too High! Guesses left: \(guesses)")
            } else if UInt32(guess) < number {
                --guesses
                resultText.text = ("Too low! Guesses left: \(guesses)")
            } else {
                resultText.text = ("You win!, go again?")
                guesses = 8
                gameOver = true
            }
            clearText()
            
            if (guesses == MAX_GUESSES) {
                clearText()
                resultText.text = ("You lose")
                guesses = 8
                gameOver = true
            }
            number = createNewNumber()
        } else {
            resultText.text = ("Please input a valid number!")
            clearText()
        }
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = createNewNumber()
        consoleOut("I have generated a random number. Can you guess it?!")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

