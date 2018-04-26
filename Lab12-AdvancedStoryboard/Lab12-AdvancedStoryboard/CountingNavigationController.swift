//
//  CountingNavigationController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by David Ceglia on 4/17/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class CountingNavigationController: UINavigationController {

    
    var firstNameOutput: String = ""
    var middleNameOutput: String = ""
    var lastNameOutput: String = ""
    var addressOneOutput: String = ""
    var addressTwoOutput: String = ""
    var cityOutput: String = ""
    var emailOutput: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
