//
//  NameTableViewCell.swift
//  TagName
//
//  Created by Mojave on 3/17/20.
//  Copyright © 2020 Mojave. All rights reserved.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var lbNameUser: UILabel!
    
    var userModel: UserModel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func display(_ userModel: UserModel) {
        self.userModel = userModel
        self.lbNameUser.text = userModel.getDisplayName()
    }
}