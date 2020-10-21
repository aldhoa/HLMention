//
//  HLMentionInfo.swift
//  HLMention
//
//  Created by Lưu Đức Hoà on 4/2/20.
//  Copyright © 2020 Luu Duc Hoa. All rights reserved.
//

import UIKit

public enum MentionInfoType: String {
    case user = "user";
    case group = "group"
}

public enum MentionInfoActType: String {
    case emoji = "emoji"
    case media = "media"
    case sticker = "sticker"
    case gif = "gif"
    case area = "area"
    case img = "img"
    case user = "user"
    case with = "with"
    case text = "text"
    case link = "link"
    case at = "at"
    case typeSearch = "search" // if want to be a search name must have at least 1 charater
}

public class HLMentionInfo: NSObject {
    public var kId = ""
    public var kName = ""
    public var kImage: UIImage?
    public var kImageName: String?
    public var kAct: MentionInfoActType = .with
    public var kType: MentionInfoType = .user
    public var kRange = NSRange(location: 0,length: 0)
    public var kSerial = 0 as Int // Số thứ tự theo tuần tự được tag.
    public var kGender = "Male"
//    var type : PostSubDataType?
    
    
    public override func copy() -> Any {
        let mentionInfo = HLMentionInfo(kId, kName)
        mentionInfo.kAct = kAct
        mentionInfo.kType = kType
        mentionInfo.kRange = kRange
        mentionInfo.kImageName = kImageName
        mentionInfo.kImage = kImage
        return mentionInfo
    }
    //    var locationBeenMention = UITextRange
    
    public init(_ id: String,_ name: String) {
        self.kId = id
        self.kName = name
    }
    
    public func getTagID() -> String {
        return "::\(kId)::"
    }
    
    func copyObject() -> HLMentionInfo {
        let mentionInfo = HLMentionInfo(kId, kName)
        mentionInfo.kAct = kAct
        mentionInfo.kType = kType
        mentionInfo.kRange = kRange
        mentionInfo.kImageName = kImageName
        mentionInfo.kImage = kImage
        return mentionInfo
    }
    
    static public func mentionInfoFromArray(mentionInfos: [HLMentionInfo], mentionInfo: HLMentionInfo) -> (mentionInfo: HLMentionInfo,mentionIndex: Int)? {
        var i = 0
        for mention in mentionInfos {
            if mention.kId == mentionInfo.kId && mention.kRange == mentionInfo.kRange {
                return (mention,i)
            }
            i += 1
        }
        return nil
    }
    
    static public func isValidNameFromMentionInfo(mentionInfos: [HLMentionInfo], name: String) -> Bool {
        for mention in mentionInfos {
            if mention.kName.lowercased().contains(name) {
                return true
            }
        }
        return false
    }
    
    static public func mentionInfoFrom(users: [AnyObject]) -> [HLMentionInfo]? {
        let mentionsInfos = [HLMentionInfo]()
        /*
        for user in users {
            let mentionInfo = HLMentionInfo("", "")
            mentionInfo.kImageName = user.avatar
            mentionInfo.kAct = .at
            mentionInfo.kType = .user
            mentionsInfos.append(mentionInfo)
        }
        */
        if !mentionsInfos.isEmpty {
            return mentionsInfos
        }
        
        return nil
    }
    
    static public func praserMentionInfo() -> [AnyObject]? {
        return nil
    }
    
    /*
     {
       "text": "Ahihih ::5bbad28345e3ad05b340e316:: Đồ ngok",
       "sub": [
         {
           "what": "5bbad28345e3ad05b340e316",
           "act": "with",
           "name": "Nguyenn Annnnn",
           "type": "user"
         }
       ]
     }
     */
}
