//
//  CountingNavigationController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by David Ceglia on 4/17/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class CountingNavigationController: UINavigationController {
    
    @IBOutlet weak var firstNameOutput: UILabel!
    @IBOutlet weak var middleNameOutput: UILabel!
    @IBOutlet weak var lastNameOutput: UILabel!
    
    @IBOutlet weak var addressOneOutput: UILabel!
    @IBOutlet weak var addressTwoOutput: UILabel!
    @IBOutlet weak var cityOutput: UILabel!
    @IBOutlet weak var emailOutput: UILabel!
    
    

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
