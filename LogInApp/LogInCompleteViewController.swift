//
//  LogInCompleteViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 20.04.2022.
//

import UIKit

class LogInCompleteViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeUserLabel.text = "Welcome, \(userName!)!"
    }

}
