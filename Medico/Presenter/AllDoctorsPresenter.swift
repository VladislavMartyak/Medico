//
//  AllDoctorsPresenter.swift
//  Medico
//
//  Created by Владислав Мартяк on 20.07.2020.
//  Copyright © 2020 Владислав Мартяк. All rights reserved.
//

import Foundation


protocol AllDoctorsView: class {
    func setAllDoctors(doctors: [Doctor])
    func printDetails(message: String)
}

protocol AllDoctorsViewPresenter {
    init(dataService: DoctorDataService)
    func attachView(view: AllDoctorsView)
    func detachView()
    func getDoctors()
    func getDetails(doctor: Doctor)
}

class AllDoctorsPresenter: AllDoctorsViewPresenter{
    
    private var view: AllDoctorsView?
    private let dataService: DoctorDataService
    
    required init(dataService: DoctorDataService) {
        self.dataService = dataService
    }
    
    func attachView(view: AllDoctorsView) {
        self.view = view
    }
    
    func detachView() {
        self.view = nil
    }
    
    func getDoctors() {
        view?.setAllDoctors(doctors: dataService.getDoctorsData())
    }
    
    func getDetails(doctor: Doctor) {
        let allertMessage = "Full name: \(doctor.fullName)" + "title: \(doctor.specialty)" + "mark:\(doctor.reviewMark)"
        self.view?.printDetails(message: allertMessage)
    }
    
}


