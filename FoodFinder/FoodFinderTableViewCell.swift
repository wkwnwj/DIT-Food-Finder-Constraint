//
//  FoodFinderTableViewCell.swift
//  FoodFinder
//
//  Created by D7703_27 on 2018. 5. 31..
//  Copyright © 2018년 dit. All rights reserved.
//

import UIKit

class FoodFinderTableViewCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!{
        didSet {
            cellImage.layer.cornerRadius = 36.5
            cellImage.clipsToBounds = true
        }
    }
    @IBOutlet weak var cellType: UILabel!
    @IBOutlet weak var cellAddress: UILabel!
    @IBOutlet weak var cellName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
