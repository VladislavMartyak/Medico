//
//  PromotionsCell.swift
//  Medico
//
//  Created by Владислав Мартяк on 16.07.2020.
//  Copyright © 2020 Владислав Мартяк. All rights reserved.
//

import UIKit

final class PromotionsCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var promotionsView: UICollectionView!
    
    // MARK: Constants
    let promoCount = 2
    
}

// MARK: UICollectionViewDataSource, UICollectionViewDelegate
extension PromotionsCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return promoCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = promotionsView.dequeueReusableCell(withReuseIdentifier: "promoCell", for: indexPath) as! PromoCell
        return cell
    }
    
}
