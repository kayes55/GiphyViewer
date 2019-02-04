//
//  RandomStickersEndPoint.swift
//  GiphyViewer
//
//  Created by Imrul Kayes on 2/4/19.
//  Copyright © 2019 Imrul Kayes. All rights reserved.
//

import Foundation
import Alamofire
enum RandomStickersEndPoint: APIConfiguration {
    
    case randomStickers
    
    // MARK: - HTTPMethod
    var method: HTTPMethod {
        switch self {
        case .randomStickers:
            return .get
        }
    }
    
    // MARK: - Path
    var path: String {
        switch self {
        case .randomStickers:
            return "v1/stickers/random"
        }
    }
    
    // MARK: - Parameters
    var parameters: Parameters? {
        switch self {
        case .randomStickers:
            return nil
            
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try "\(Keys.ProductionServer.baseURL)\(path)".asURL()
        
        var urlRequest = URLRequest(url: url)
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
//        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(Keys.ProductionServer.apiKey, forHTTPHeaderField: HTTPHeaderField.apiKey.rawValue)
        
        
        // Parameters
        if let parameters = parameters {
            urlRequest.httpBody = Query.shared.query(parameters).data(using: .utf8, allowLossyConversion: false)
        }
        return urlRequest
    }

}
