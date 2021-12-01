//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
	@IBOutlet weak var scoreLabel: UILabel!
	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var progressBar: UIProgressView!
	@IBOutlet weak var trueBotton: UIButton!
	@IBOutlet weak var falseBotton: UIButton!
	
	
	var quizBrain = QuizBrain()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		upDateUI()
      
    }

	@IBAction func answerBottonPressed(_ sender: UIButton) {
		
		let userAnswer = sender.currentTitle!
		
		let userGotItRight = quizBrain.checkAnswer(userAnswer)
	
		if userGotItRight {
			sender.backgroundColor = UIColor.green
		} else {
			sender.backgroundColor = UIColor.red
		}
		
		quizBrain.nextQuestion()
		
		Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(upDateUI), userInfo: nil, repeats: false)
	}
	
	@objc func upDateUI() {
	
		questionLabel.text = quizBrain.getQuestionText()
		progressBar.progress = quizBrain.getProgress()
		scoreLabel.text = "Score: \(quizBrain.getScore())"
		
		trueBotton.backgroundColor = UIColor.clear
		falseBotton.backgroundColor = UIColor.clear
	}
	
}

