//
//  HomeController.swift
//  Medico
//
//  Created by Владислав Мартяк on 13.07.2020.
//  Copyright © 2020 Владислав Мартяк. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    
    @IBOutlet weak var homeTableView: UITableView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
    

}
    
extension HomeController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 160.0
        }
        if indexPath.row == 1{
            return 182
        }
        if indexPath.row == 2{
            return 253
        } else {
            return 269
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "firstCustomCell") as! IntroCell
            cell.setupCellUI()
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "secondCustomCell") as! PromotionsCell
            //set the data here
            return cell
        }  else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "thirdCustomCell") as! AllDoctorsCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "fourthCustomCell") as! IntroCell
            return cell
        }
    }
    
}
