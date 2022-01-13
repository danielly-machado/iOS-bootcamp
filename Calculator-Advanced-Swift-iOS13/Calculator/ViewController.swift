//
//  ViewController.swift
//  Calculator
//
//  Created by Danielly Alves Ribeiro Machado
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
	private var isFinishedTypingNumber : Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
		
		isFinishedTypingNumber = true
		
		guard let number = Double(displayLabel.text!) else {
			fatalError("Cannot convert display label text to a Double.")
		}
    
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
		if let numValue = sender.currentTitle {
			
			if isFinishedTypingNumber {
			displayLabel.text = numValue
			isFinishedTypingNumber = false
			} else {
				displayLabel.text = displayLabel.text! + numValue
			}
    
		}

	}

}