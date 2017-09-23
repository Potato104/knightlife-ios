//
//  BlockTableViewCell.swift
//  Glancer
//
//  Created by Cassandra Kane on 11/29/15.
//  Copyright (c) 2015 Vishnu Murale. All rights reserved.
//

import UIKit

class BlockTableViewCell: UITableViewCell
{
    @IBOutlet weak var blockLetter: UILabel!
    @IBOutlet weak var className: UILabel!
    @IBOutlet weak var classTimes: UILabel!
    
    var label: Label?
	{
        didSet
		{
            if let label = label
			{
                //sets up note table cell
                self.blockLetter.text = label.blockLetter
                self.className.text = label.className
                self.classTimes.text = label.classTimes
                let RGBvalues = Utils.getRGBFromHex(label.color)
                self.backgroundColor = UIColor(red: (RGBvalues[0] / 255.0), green: (RGBvalues[1] / 255.0), blue: (RGBvalues[2] / 255.0), alpha: 1)
            }
        }
    }
}
