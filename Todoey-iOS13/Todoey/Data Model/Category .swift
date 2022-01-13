//
//  Category .swift
//  Todoey
//
//  Created by Danielly Alves Ribeiro Machado on 05/01/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
	@objc dynamic var name: String = ""
	@objc dynamic var colour: String = ""
	let items = List<Item>()
}
