//
//  NewsFeedParser.swift
//  vkwatch Extension
//
//  Created by Дмитрий Червяков on 01.11.2020.
//  Copyright © 2020 VK. All rights reserved.
//

import Foundation

protocol Parser {
    func parse(_ json: [String: Any])
}

final class NewsFeedParser: Parser {

    func parse(_ json: [String: Any]) {
        if let items = json["items"] as? [Dictionary<String, Any>] {
            var posts: [Dictionary<String, Any>] = []
            for item in items {
                if item["type"] as! String == "post" {
                    posts.append(item)
                }
            }

            var postsModel: [PostModel] = posts.map { (post) -> PostModel in
                var date = Date()
                if let rowDate = post["date"] as? Int32 {
                    date = Date(timeIntervalSince1970: TimeInterval(rowDate))
                }

                var commentsCount: Int32 = 0
                if let rawCom = post["comments"] as? Dictionary<String, Any>, let count = rawCom["count"] as? Int32 {
                    commentsCount = count
                }

                var respotsCount: Int32 = 0
                if let rawRepost = post["reposts"] as? Dictionary<String, Any>, let count = rawRepost["count"] as? Int32 {
                    respotsCount = count
                }

                var isLiked = false
                if let rawLiked = post["is_favorite"] as? Int {
                    isLiked = rawLiked == 0 ? false : true
                }

                var likes: Int32 = 0
                if let rawLikes = post["likes"] as? Dictionary<String, Any>, let count = rawLikes["count"] as? Int32 {
                    likes = count
                }

                let postText = post["text"] as! String

                var views: Int32 = 0
                if let rawViews = post["views"] as? Dictionary<String, Any>, let count = rawViews["count"] as? Int32 {
                    views = count
                }

                
                if let history = post["copy_history"] as? [Dictionary<String, Any>] {

                }

                var photoContent: String
                if let attachments = post["attachments"] as? [Dictionary<String, Any>] {
                    for item in attachments {
                        if let type = item["type"] as? String, type == "photo" {
//                            if let photoUrl
                        }
                    }
                }

                return PostModel.mock()[0]
            }

        }
    }
}
