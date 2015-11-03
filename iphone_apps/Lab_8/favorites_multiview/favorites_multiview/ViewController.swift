//
//  ViewController.swift
//  favorites_multiview
//
//  Created by Connor Flynn Mcguinness on 10/20/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bookLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    var user = Favorite()
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        bookLabel.text = user.favBook
        authorLabel.text = user.favAuthor
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

