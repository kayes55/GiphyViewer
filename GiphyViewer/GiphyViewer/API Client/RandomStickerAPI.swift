//
//  RandomStickerAPI.swift
//  GiphyViewer
//
//  Created by Imrul Kayes on 2/4/19.
//  Copyright © 2019 Imrul Kayes. All rights reserved.
//

import Alamofire

class RandomStickerAPI {
    
    @discardableResult
    private static func performRequest<T:Decodable>(route:RandomStickersEndPoint, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T>, Int)->Void) -> DataRequest {
        return AF.request(route)
            .responseDecodable (decoder: decoder){ (response: DataResponse<T>) in
                completion(response.result, response.response?.statusCode ?? 0)

        }
    }
    
    static func getRandomStickers(completion: @escaping (Result<DataClass>, Int)->Void) {
        performRequest(route: RandomStickersEndPoint.randomStickers, completion: completion)
    }


}
