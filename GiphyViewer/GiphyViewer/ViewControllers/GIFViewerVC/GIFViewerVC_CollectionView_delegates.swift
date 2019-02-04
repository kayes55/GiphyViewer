//
//  GIFViewerVC_CollectionView_delegates.swift
//  GiphyViewer
//
//  Created by Imrul Kayes on 2/4/19.
//  Copyright © 2019 Imrul Kayes. All rights reserved.
//

import UIKit

extension GIFViewerVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gifCell", for: indexPath) as! GifViwerCell
        
        return cell
    }
    
    
}
