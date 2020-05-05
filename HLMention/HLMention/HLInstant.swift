//
//  HLInstant.swift
//  HLMention
//
//  Created by HoaLD on 4/9/20.
//  Copyright © 2020 Luu Duc Hoa. All rights reserved.
//

import UIKit

class HLInstant {
    // iOS
//    public static var systemVersion = UIDevice.current.systemVersion
    
    var hlMentionInfosTableView = [HLMentionInfo]()
    
    var hlTableViewBackgroundColor: UIColor = UIColor.gray.withAlphaComponent(0.8)
    var hlTableViewMax: Int = 5
    var hlTableViewHeight: CGFloat = 100
    var hlTableViewCellHeight: CGFloat?
    var hlTableViewBorderColor: CGColor = UIColor.black.withAlphaComponent(0.8).cgColor
    var hlTableViewBorderWidth: CGFloat = 1.0
    var hlTableViewCornerRadius: CGFloat = 5.0
    var hlTableViewMasksToBounds: Bool = true
    
    //HL Search offline data
    var hlListMentionInfos: [HLMentionInfo]?
    var hlMentionSymbol : Character = "@" // default value is @ [at]
    var hlText: String = ""
    var hlHighlightColor : UIColor = UIColor.red
    
    var hlRange = NSRange() /* don't touch */
    var hlReplacementText = "" /* don't touch */
    var hlMentionInfos = [HLMentionInfo]()
    
    // search
    var hlMentionSearchInfo = HLMentionSearchInfo() /* don't touch */
    var hlHowManyCharacterBeginSearch: Int = 0
}
