//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Lidiomar Fernando dos Santos Machado on 01/11/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
	
	var bmi: BMI?
	
	func getBMIValue() -> String {
		let bmiToDecimalPlace = String(format: "%1.f", bmi?.value ?? 0.0)
			return bmiToDecimalPlace
	}
	
	func getAdvice() -> String {
		return bmi?.advice ?? "No advice"
	}
	
	func getColor() -> UIColor {
		return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
	}
	
	mutating func calculateBMI(height: Float, weight: Float) {
		let bmiValue = weight / pow(height,2)
		
		if bmiValue < 18.5 {
			bmi = BMI(value: bmiValue, advice: "Tá liberado o docinho favorito!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
		} else if bmiValue < 24.9 {
			bmi = BMI(value: bmiValue, advice: "Tá no grau, mami!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
		} else {
			bmi = BMI(value: bmiValue, advice: "Sem comida favorita hoje", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
		}
	}	
}
