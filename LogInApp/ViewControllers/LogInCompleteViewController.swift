//
//  LogInCompleteViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 20.04.2022.
//

import UIKit

class LogInCompleteViewController: UIViewController {
    
//    MARK: IB Outlets
    @IBOutlet var welcomeUserLabel: UILabel!
    
//    MARK: Public properties
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(userName ?? "")!"
    }
}
