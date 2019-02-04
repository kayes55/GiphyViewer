//
//  APIConfiguration.swift
//  GiphyViewer
//
//  Created by Imrul Kayes on 2/4/19.
//  Copyright © 2019 Imrul Kayes. All rights reserved.
//

import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}

