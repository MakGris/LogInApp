//
//  PCBulidViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 24.04.2022.
//

import UIKit

class PCBulidViewController: UIViewController {

//    MARK: IB Outlets
    @IBOutlet var aboutPCLabel: UILabel!
    
//    MARK: Public properties
    var aboutPC: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutPCLabel.text = aboutPC
    }

}
