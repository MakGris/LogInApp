//
//  BooksViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 24.04.2022.
//

import UIKit

class BooksViewController: UIViewController {

//    MARK: IB Outlets
    @IBOutlet var favoriteBookLabel: UILabel!
    
//    MARK: Public properties
    var favoriteBookName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteBookLabel.text = favoriteBookName
    }

}
