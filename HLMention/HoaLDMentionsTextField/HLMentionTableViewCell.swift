//
//  HLMentionTableViewCell.swift
//  HLMention
//
//  Created by Lưu Đức Hoà on 4/2/20.
//  Copyright © 2020 Luu Duc Hoa. All rights reserved.
//

import UIKit

class HLMentionTableViewCell: UITableViewCell {

    @IBOutlet weak var lbNameUser: UILabel!
    private var mentionInfo: HLMentionInfo!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func display(_ mentionInfo: HLMentionInfo) {
        self.mentionInfo = mentionInfo
        self.lbNameUser.text = mentionInfo.getDisplayName()
    }
    
    func getMentionInfo() -> HLMentionInfo {
        return mentionInfo
    }
}