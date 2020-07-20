//
//  AllDoctorsCell.swift
//  Medico
//
//  Created by Владислав Мартяк on 16.07.2020.
//  Copyright © 2020 Владислав Мартяк. All rights reserved.
//

import UIKit

final class AllDoctorsCell: UITableViewCell {

    //MARK: Outlets
    @IBOutlet weak var allDoctorsView: UICollectionView!
    
    
    private var presenter = AllDoctorsPresenter(dataService: DoctorDataService())
    private var doctors = [Doctor]()
    
    //MARK: Cell Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.presenter.attachView(view: self)
        self.presenter.getDoctors()
        
        self.allDoctorsView.register(UINib.init(nibName: "DoctorView", bundle: nil), forCellWithReuseIdentifier: "DoctorCell")
        self.allDoctorsView.clipsToBounds = false
        self.allDoctorsView.layer.masksToBounds = false
    }
}

extension AllDoctorsCell: AllDoctorsView{
    func setAllDoctors(doctors: [Doctor]) {
        self.doctors = doctors
    }
    
    func printDetails(message: String) {
        print(message)
    }
    
}

//MARK: UICollectionViewDataSource, UICollectionViewDelegate
extension AllDoctorsCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return doctors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = allDoctorsView.dequeueReusableCell(withReuseIdentifier: "DoctorCell", for: indexPath) as! DoctorCell
        
        let shadowView = UIView(frame: CGRect(x: 0, y: 27, width: 125, height: 129))
        shadowView.backgroundColor = .white
        shadowView.layer.cornerRadius = 10
        shadowView.clipsToBounds = false
        shadowView.layer.masksToBounds = false
        shadowView.layer.applyCustomShadow(color: .black, alpha: 0.16, x: 0, y: 9, blur: 28, spread: 0)
    
        cell.insertSubview(shadowView, at: 0)
        
        cell.setupData(doctorData: doctors[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.presenter.getDetails(doctor: doctors[indexPath.row])
        allDoctorsView.deselectItem(at: indexPath, animated: false)
        
    }
    
}
