//
//  TweetCell.swift
//  Twitter
//
//  Created by Sandesh Basnet on 2/20/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    
    
    @IBOutlet weak var userDp: UIImageView!
    
    
    @IBOutlet weak var tweet: UILabel!
    
    
    @IBOutlet weak var username: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
