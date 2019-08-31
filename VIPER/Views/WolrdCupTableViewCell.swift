//
//  WolrdCupTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Alessandro on 29/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import UIKit

class WolrdCupTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var flagHome: UIImageView!
    @IBOutlet weak var flagAway: UIImageView!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var lblHome: UILabel!
    @IBOutlet weak var lblAway: UILabel!
    
    
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
