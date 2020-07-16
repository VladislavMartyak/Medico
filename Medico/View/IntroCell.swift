//
//  IntroCell.swift
//  Medico
//
//  Created by Владислав Мартяк on 13.07.2020.
//  Copyright © 2020 Владислав Мартяк. All rights reserved.
//

import UIKit

final class IntroCell: UITableViewCell {

    @IBOutlet weak var iconDoctor: UIImageView!
    @IBOutlet weak var mainTitleDoctor: UILabel!
    @IBOutlet weak var descriptionTitleDoctor: UILabel!
    
    @IBOutlet weak var iconMedicines: UIImageView!
    @IBOutlet weak var mainTitleMedicines: UILabel!
    @IBOutlet weak var descriptionTitleMedicines: UILabel!
    
    @IBOutlet weak var iconDiagnostic: UIImageView!
    @IBOutlet weak var mainTitleDiagnostic: UILabel!
    @IBOutlet weak var descriptionTitleDiagnostic: UILabel!
    
    func setupCellUI(){
        iconDoctor.layer.applyCustomShadow(color: .black, alpha: 0.16, x: 0, y: 11, blur: 35, spread: 0)
        iconMedicines.layer.applyCustomShadow(color: .black, alpha: 0.16, x: 0, y: 11, blur: 35, spread: 0)
        iconDiagnostic.layer.applyCustomShadow(color: .black, alpha: 0.16, x: 0, y: 11, blur: 35, spread: 0)
    }
    
}
