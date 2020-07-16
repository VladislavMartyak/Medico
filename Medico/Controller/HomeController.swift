//
//  HomeController.swift
//  Medico
//
//  Created by Владислав Мартяк on 13.07.2020.
//  Copyright © 2020 Владислав Мартяк. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var homeTableView: UITableView!

    // MARK: Constants
    let sectionCount = 1
    let rowsCount = 4
    
    // MARK: UIViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }

}

//MARK: UITableViewDelegate, UITableViewDataSource
    
extension HomeController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionCount
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsCount
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 160
        }
        if indexPath.row == 1{
            return 182
        }
        if indexPath.row == 2{
            return 254
        } else {
            return 268
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "firstCustomCell") as! IntroCell
            cell.setupCellUI()
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "secondCustomCell") as! PromotionsCell
            cell.selectionStyle = .none
            return cell
        }  else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "thirdCustomCell") as! AllDoctorsCell
            cell.selectionStyle = .none
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "fourthCustomCell") as! IntroCell
            cell.selectionStyle = .none
            return cell
        }
    }
    
}
