//
//  BottomPrefsModule.swift
//  Glancer
//
//  Created by Dylan Hanson on 8/14/18.
//  Copyright © 2018 Dylan Hanson. All rights reserved.
//

import Foundation
import AddictiveLib

class BottomPrefsModule: TableModule {
	
	override func build() {
		let section = self.addSection()
        section.addCell("snowDay").setHeight(35)
        section.addCell("survey").setHeight(35)
        section.addCell("credits").setHeight(35)
    section.addSpacerCell().setBackgroundColor(Scheme.Backgrounddark.color).setHeight(20).setSelectionStyle(.none)
	}
	
}
