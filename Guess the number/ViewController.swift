//
//  ViewController.swift
//  Guess the number
//
//  Created by Naval Jassi on 12/2/18.
//  Copyright © 2018 Naval Jassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var guessText: UITextField!
    
    @IBOutlet weak var guessLabel: UILabel!
    
    var guessNumber = 0
    var countGuesses = 0
    var guessAgain = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guessNumber = Int(arc4random_uniform(100))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessTheNumber(_ sender: Any) {
        if Int(guessText.text!) != nil {
            
            let num = Int(guessText.text!)
            countGuesses += 1
            
            if num == guessNumber {
                guessLabel.text = "Congratulation You Have Guessed The Number. It took \(countGuesses) Number Of Guesses"
            }
            else if num! > guessNumber {
                guessLabel.text = "Number is Greater Than The Guess Number"
            }
            else if num! < guessNumber {
                guessLabel.text = "Number is less Than The Guess Number"
            }
            
            guessText.text = ""
        }
        else {
            guessLabel.text = "Please Enter A Number In The Text Field "
        }
    }
    
}

