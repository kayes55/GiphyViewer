//
//  APIConstants.swift
//  GiphyViewer
//
//  Created by Imrul Kayes on 2/4/19.
//  Copyright © 2019 Imrul Kayes. All rights reserved.
//

import Foundation


struct Keys {
    struct ProductionServer {
        static let baseURL = "http://api.giphy.com/"
        static let apiKey = "2gJfkGHafruIhbAWUDes84e3AM7C079f"
    }
    
    struct APIParameterKey {
        static let email = "email"
        static let password = "password"
        static let username = "username"
        static let profileImageUrl = "profile_image_url"
        static let profileThumbnailUrl = "profile_thumbnail_url"
        static let securityCode = "security_code"
        static let newPassword = "new_password"
        static let data = "data"
        static let thumbnail = "thumbnail"
        static let video = "video"
        static let text = "text"
    }
}

enum HTTPHeaderField: String {
    case apiKey = "api_key"
    case authorizationValue = "nkla-NodeCov6q9jx-dddx"
    case acceptType = "Content-Type"
}

enum ContentType: String {
    case json = "application/x-www-form-urlencoded"
    case formData = " x-www-form-urlencoded"
}

enum Order: String {
    case popular = "popular"
    case collections = "collections"
}
