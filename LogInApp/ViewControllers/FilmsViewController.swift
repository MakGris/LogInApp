//
//  FilmsViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 24.04.2022.
//

import UIKit

class FilmsViewController: UIViewController {

//    MARK: IB Outlets
    @IBOutlet var favoriteFilmLabel: UILabel!
    
//    MARK: Public properties
    var favoriteFilmName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteFilmLabel.text = favoriteFilmName
    }

}
