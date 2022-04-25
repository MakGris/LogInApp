//
//  HobbiesViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 25.04.2022.
//

import UIKit

class HobbiesViewController: UIViewController {
    
//    MARK: Public properties
    let user = User.getUser()
    
//    MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gamesVC = segue.destination as? GamesViewController {
            gamesVC.favoriteGameName = user.person.hobbies.favoriteGame
        } else if let booksVC = segue.destination as? BooksViewController {
            booksVC.favoriteBookName = user.person.hobbies.favoriteBook
        } else if let filmsVC = segue.destination as? FilmsViewController {
            filmsVC.favoriteFilmName = user.person.hobbies.favoriteFilm
        } else if let aboutPCVC = segue.destination as? PCBulidViewController {
            aboutPCVC.aboutPC = user.person.hobbies.buildPC
        }
        
    }
    
}
