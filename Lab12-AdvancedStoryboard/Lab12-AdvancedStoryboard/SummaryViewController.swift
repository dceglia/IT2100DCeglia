//
//  SummaryViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by David Ceglia on 4/26/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var addressOneLabel: UILabel!
    @IBOutlet weak var addressTwoLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        self.firstNameLabel.text = (parent as! CountingNavigationController).firstNameOutput
        self.middleNameLabel.text = (parent as! CountingNavigationController).middleNameOutput
        self.lastNameLabel.text = (parent as! CountingNavigationController).lastNameOutput
        self.addressOneLabel.text = (parent as! CountingNavigationController).addressOneOutput
        self.addressTwoLabel.text = (parent as! CountingNavigationController).addressTwoOutput
        self.cityLabel.text = (parent as! CountingNavigationController).cityOutput
        self.emailLabel.text = (parent as! CountingNavigationController).emailOutput
        
    }
    
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
