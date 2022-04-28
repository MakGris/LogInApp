//
//  EducationViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 24.04.2022.
//

import UIKit

class EducationViewController: UIViewController {

//    MARK: IB Outlets
    @IBOutlet var universityLabel: UILabel!
    @IBOutlet var specializationLabel: UILabel!
    @IBOutlet var qualificationLabel: UILabel!
    @IBOutlet var yearOfAdmissionLabel: UILabel!
    @IBOutlet var yearOfGraduationLabel: UILabel!
    
//    MARK: Public properties
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        universityLabel.text = user.person.education.nameOfUniversity
        specializationLabel.text = user.person.education.nameOfSpecialization
        qualificationLabel.text = user.person.education.nameOfQualification
        yearOfAdmissionLabel.text = "Год поступления: \(user.person.education.yearOfAdmission)"
        yearOfGraduationLabel.text = "Год выпуска: \(user.person.education.yearOfGraduation)"
        
    }

}
