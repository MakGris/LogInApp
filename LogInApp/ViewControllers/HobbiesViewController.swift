//
//  HobbiesViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 25.04.2022.
//

import UIKit

class HobbiesViewController: UIViewController {
//MARK: IB Outlets
    @IBOutlet var buildPCButton: UIButton!
    @IBOutlet var videoGamesButton: UIButton!
    @IBOutlet var booksButton: UIButton!
    @IBOutlet var filmsButton: UIButton!
    
//MARK: Public properties
    var user: User!
    
//MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutHoobiesVC = segue.destination as? CurrentHobbieViewController else { return }
        let senderButton = sender as! UIButton
        if senderButton == buildPCButton {
            aboutHoobiesVC.hobbieDescription = user.person.hobbies.buildPC
            aboutHoobiesVC.image = UIImage(named: user.person.hobbies.imageOfPC)
        } else if senderButton == videoGamesButton {
            aboutHoobiesVC.hobbieDescription = user.person.hobbies.favoriteGame
            aboutHoobiesVC.image = UIImage(named: user.person.hobbies.imageOfGame)
        } else if senderButton == booksButton {
            aboutHoobiesVC.hobbieDescription = user.person.hobbies.favoriteBook
            aboutHoobiesVC.image = UIImage(named: user.person.hobbies.imageOfBook)
        } else if senderButton == filmsButton {
            aboutHoobiesVC.hobbieDescription = user.person.hobbies.favoriteFilm
            aboutHoobiesVC.image = UIImage(named: user.person.hobbies.imageOfFilm)
        }
    }
}
