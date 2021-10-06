//
//  CustomCell.swift
//  CustomCell
//
//  Created by Ashish Pisey on 05/10/21.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
