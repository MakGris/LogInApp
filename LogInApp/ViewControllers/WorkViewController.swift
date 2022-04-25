//
//  WorkViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 24.04.2022.
//

import UIKit

class WorkViewController: UIViewController {
    //    MARK: IB Outlets
    @IBOutlet var positionLabel: UILabel!
    @IBOutlet var companyNameLabel: UILabel!
    @IBOutlet var kindOfActivityLabel: UILabel!
    
    //    MARK: Public properties
    var positionName: String!
    var companyName: String!
    var activityName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        positionLabel.text = positionName
        companyNameLabel.text = companyName
        kindOfActivityLabel.text = activityName
    }
    
}
