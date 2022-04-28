//
//  ViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 20.04.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
//    MARK: IB Outlets
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
//    MARK: Public properties
    let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.delegate = self
        passwordField.delegate = self
    }
    
//    MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let logCompleteVC = viewController as? LogInCompleteViewController {
                logCompleteVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                if let aboutWorkVC = navigationVC.topViewController as? WorkViewController {
                    aboutWorkVC.user = user
                } else if let aboutEducationVC = navigationVC.topViewController as? EducationViewController {
                    aboutEducationVC.user = user
                } else if let aboutHobbiesVC = navigationVC.topViewController as? HobbiesViewController {
                    aboutHobbiesVC.user = user
                }
            }
        }
        
    }
    
//    MARK: IB Actions
    @IBAction func logInButtonPressed() {
        if userNameField.text != user.login || passwordField.text != user.password {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
        }
        
    }
    
    @IBAction func remindNameButtonTapped() {
        showAlert(with: "Oops!", and: "Your name is Maksim")
    }
    
    @IBAction func remindPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is SwiftBook")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
    
    
}
//MARK: Private Methods
extension LogInViewController {
    private func showAlert(with title: String, and message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordField.text = ""
        }
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
}
//MARK: Work with keyboard Methods
extension LogInViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameField {
            passwordField.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
        }
        return true
    }
    
}
