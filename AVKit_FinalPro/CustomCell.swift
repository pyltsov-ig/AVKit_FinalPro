//
//  CustomCell.swift
//  AVKit_FinalPro
//
//  Created by Igor Pyltsov on 21.07.2021.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
