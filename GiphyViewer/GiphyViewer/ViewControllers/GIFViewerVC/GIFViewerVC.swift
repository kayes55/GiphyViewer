//
//  ViewController.swift
//  GiphyViewer
//
//  Created by Imrul Kayes on 2/4/19.
//  Copyright © 2019 Imrul Kayes. All rights reserved.
//

import UIKit
import Alamofire

class GIFViewerVC: UIViewController {

    @IBOutlet weak var gifCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        RandomStickerAPI.getRandomStickers { (result, statusCode) in
            switch result {
            case .success(let stickerImages):
                print(stickerImages)
            case .failure(let error):
                print(error)
            }
        }
    }


}

