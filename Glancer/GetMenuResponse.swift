//
//  GetMenuResponse.swift
//  Glancer
//
//  Created by Dylan Hanson on 12/15/17.
//  Copyright © 2017 Dylan Hanson. All rights reserved.
//

import Foundation
import Unbox

class GetMenuResponse: WebCallResult
{
	let items: [GetMenuResponseItem]
	
	required init(unboxer: Unboxer) throws
	{
		self.items = try unboxer.unbox(keyPath: "menu.items", allowInvalidElements: false)
	}
}

class GetMenuResponseItem: WebCallResult
{
	let type: String
	let name: String
	var allergy: String?

	required init(unboxer: Unboxer) throws
	{
		self.type = try unboxer.unbox(key: "type")
		self.name = try unboxer.unbox(key: "name")
		self.allergy = unboxer.unbox(key: "allergy")
	}
}