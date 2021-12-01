//
//  ViewController.swift
//  ParOuImpar
//
//  Created by Lidiomar Fernando dos Santos Machado on 21/09/21.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var Par: UIImageView!
	@IBOutlet weak var Impar: UIImageView!
	@IBOutlet weak var textPar: UILabel!
	@IBOutlet weak var textImpar: UILabel!
	
		
	@IBAction func goButtomPressed(_ sender: UIButton) {
		
		let parArray = [#imageLiteral(resourceName: "0"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "10")]
		let imparArray = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "9")]

		Par.image = parArray.randomElement()
		Impar.image = imparArray.randomElement()
			
	}
	
}

