//
//  DoctorCell.swift
//  Medico
//
//  Created by Владислав Мартяк on 16.07.2020.
//  Copyright © 2020 Владислав Мартяк. All rights reserved.
//

import UIKit

class DoctorCell: UICollectionViewCell {
    
    //MARK: Outles
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var specialty: UILabel!
    @IBOutlet weak var reviewMark: UILabel!
    @IBOutlet weak var backgroundCard: UIView!
    
    //MARK: Cell Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundCard.layer.cornerRadius = 10
        backgroundCard.layer.applyCustomShadow(color: .black, alpha: 0.16, x: 0, y: 9, blur: 28, spread: 0)
    }
    
    //MARK: Functions
    func setupData(doctorData: Doctor){
        image.image = UIImage(named: doctorData.fullName)
        fullName.text = doctorData.fullName
        specialty.text = doctorData.specialty
        reviewMark.text = String(doctorData.reviewMark)
    }

    
}

