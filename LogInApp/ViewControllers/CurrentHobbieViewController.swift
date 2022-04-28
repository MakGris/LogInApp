//
//  CurrentHobbieViewController.swift
//  LogInApp
//
//  Created by Maksim Grischenko on 28.04.2022.
//

import UIKit

class CurrentHobbieViewController: UIViewController {
    
//MARK: IB Outlets
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textLabel: UILabel!
    
//MARK: Public properties
    var image: UIImage!
    var hobbieDescription: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        textLabel.text = hobbieDescription
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
