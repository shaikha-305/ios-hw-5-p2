//
//  CustomCell.swift
//  iOS-HW5-p2
//
//  Created by Huda on 7/5/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    var movieData: Movie!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
        
        // Configure the view for the selected state
    }
    
    

}
