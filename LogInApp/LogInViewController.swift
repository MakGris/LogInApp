//
//  ViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 20.04.2022.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameField.delegate = self
        passwordField.delegate = self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameField.text == "Maksim" && passwordField.text == "SwiftBook" {
            guard let logCompleteVC = segue.destination as? LogInCompleteViewController else { return }
            logCompleteVC.userName = userNameField.text
        } else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    @IBAction func remindNameButtonTapped() {
        showAlert(with: "Oops!", and: "Your name is Maksim")
    }
    
    @IBAction func remindPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is SwiftBook")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is LogInCompleteViewController else { return }
        userNameField.text = ""
        passwordField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameField {
            textField.resignFirstResponder()
            passwordField.becomeFirstResponder()
        } else {
            presentViewControllerByDoneButton()
        }
        return true
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
    private func presentViewControllerByDoneButton() {
        if userNameField.text == "Maksim" && passwordField.text == "SwiftBook" {
            if let logCompleteVC = storyboard?.instantiateViewController(withIdentifier: "LogComplete") as? LogInCompleteViewController {
                logCompleteVC.userName = userNameField.text
                present(logCompleteVC, animated: true)
            }
        } else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }
}
