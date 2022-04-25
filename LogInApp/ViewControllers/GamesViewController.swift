//
//  GamesViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 24.04.2022.
//

import UIKit

class GamesViewController: UIViewController {

//    MARK: IB Outlets
    @IBOutlet var favoriteGameLabel: UILabel!
    
//    MARK: Public properties
    var favoriteGameName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteGameLabel.text = favoriteGameName
    }
    

}
