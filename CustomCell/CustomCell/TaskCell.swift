//
//  TaskCell.swift
//  CustomCell
//
//  Created by Ashish Pisey on 05/10/21.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
