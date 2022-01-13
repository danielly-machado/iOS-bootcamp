//import UIKit
//
//let pizzaInInches: Int = 16
//var numberOfPeople: Int = 12
//let slicesPerPerson = 4
//
//var numberOfSlices: Int {
//	get {
//		return pizzaInInches - 4
//	}
//}
//
//var numberOfPizza: Int {
//	get {
//		let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
//		return numberOfPeople / numberOfPeopleFedPerPizza
//	}
//	set {
//		let totalSlices = numberOfSlices * newValue
//		 numberOfPeople = totalSlices / slicesPerPerson
//	}
//}
//
//numberOfPizza = 6
//
//print(numberOfPeople)

import Foundation

var largura: Float = 3.4
var altura: Float = 2.1
let areaCobertaPorBalde: Float = 1.5

var bucketsOfPaint: Int {
	get {
		let area: Float = largura * altura
		let quantidadeBaldes = area / areaCobertaPorBalde
		let quantArredondadaBalde = ceil(quantidadeBaldes)
		return Int(quantArredondadaBalde)
	}
	set {
		let areaCoberta = Double(newValue) * 1.5
	}
}

bucketsOfPaint = 5
