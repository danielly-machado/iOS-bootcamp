//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// IBOutlet permite fazer referência à um elemento de interface do usuário.
	@IBOutlet weak var diceImageView1: UIImageView!
	@IBOutlet weak var diceImageView2: UIImageView!

	@IBAction func rollButtonPressed(_ sender: UIButton) {
		
		// Foi criada um Array com os dados para refatorar o código.
		let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
		
		//randomElement é a forma mais simples de randomização.
		diceImageView1.image = diceArray.randomElement()
		diceImageView2.image = diceArray.randomElement()
		
	}
	
}
