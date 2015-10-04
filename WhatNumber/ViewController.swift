//  ViewController.swift
//  WhatNumber
//
//  Created by Mirko Cukich on 9/16/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // this will accept an integer with a choice of 5 numbers
    // swift starts counting at 0, so this will give us from 0 - 4
    // variable called correct setting it to a method called arc4random_uniform
    // that accepts an integer
    var correct = arc4random_uniform(5)
    
    // Top Label
    @IBOutlet var message: UILabel!
    
    // Middle TextField
    @IBOutlet var guessField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    // print to console of the variable correct
        print(correct)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Bottom 'Check Answer' button
    @IBAction func checkButton(sender: UIButton) {
        
        // var to hold guess
        var guess = guessField.text
        
        // var to hold correctGuess which will handle the string version
        // of our guess, you can not compare a String with an integer
        var correctGuess = String(correct)
        
        // makes the textfield blank after we check the field
        guessField.text = ""
        
        // if/else statement to check correctGuess taken by user
        if guess == correctGuess {
            message.text = "Correct Answer"
            // changes output text to green color
            message.textColor = UIColor.greenColor()
        } else {
            message.text = "Wrong Answer, Try again."
            // changes output text to green color
            message.textColor = UIColor.redColor()
        }
    }
}