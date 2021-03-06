//
//  DoctorDataService.swift
//  Medico
//
//  Created by Владислав Мартяк on 20.07.2020.
//  Copyright © 2020 Владислав Мартяк. All rights reserved.
//

import Foundation

class DoctorDataService{
    func getDoctorsData() -> [Doctor] {
        let doctor1 = Doctor(fullName: "Dr. Alina James", specialty: "B.Sc, MBBS, DDVL, MD-\nDermitologist", reviewMark: 4.2)
        let doctor2 = Doctor(fullName: "Dr. Steve Robert", specialty: "B.Sc, MBBS, DDVL", reviewMark: 3.6)
        let doctor3 = Doctor(fullName: "Dr. Senila Fig", specialty: "B.Sc, MBBS, DDVL, MD-\nDermitologist", reviewMark: 3.0)

        let doctorsList: [Doctor] = [doctor1, doctor2, doctor3]
        
        return doctorsList
    }
}
