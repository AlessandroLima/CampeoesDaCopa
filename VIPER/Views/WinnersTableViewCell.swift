//
//  WinnersTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Alessandro on 28/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import UIKit

class WinnersTableViewCell: UITableViewCell {

    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var lblWinner: UILabel!
    @IBOutlet weak var lblVice: UILabel!
    @IBOutlet weak var lblWinnerScore: UILabel!
    @IBOutlet weak var lblViceScore: UILabel!
    @IBOutlet weak var imgFlagWinner: UIImageView!
    @IBOutlet weak var imgFlagVice: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
