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
    var university: String!
    var specialization: String!
    var qualification: String!
    var yearOfAdmission: Int!
    var yearOfGraduated: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        universityLabel.text = university
        specializationLabel.text = specialization
        qualificationLabel.text = qualification
        yearOfAdmissionLabel.text = "Год поступления: \(yearOfAdmission ?? 0)"
        yearOfGraduationLabel.text = "Год выпуска: \(yearOfGraduated ?? 0)"
        
    }

}
