//
//  GenericViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by David Ceglia on 4/17/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var middleNameInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var scene1Button: UIButton!
    
    @IBOutlet weak var addressOneInput: UITextField!
    @IBOutlet weak var addressTwoInput: UITextField!
    @IBOutlet weak var cityInput: UITextField!
    @IBOutlet weak var stateInput: UITextField!
    @IBOutlet weak var zipInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    
    
    @IBAction func nameSubmission(_ sender: Any) {
        updateNames()
    }
    
    @IBAction func addressSubmission(_ sender: Any) {
        updateAddress()
    }
    
    func updateNames() {
        let first=(parent as! CountingNavigationController).firstNameOutput
        let middle=(parent as! CountingNavigationController).middleNameOutput
        let last=(parent as! CountingNavigationController).lastNameOutput
        self.firstNameInput.text = (String(describing: first))
        self.middleNameInput.text = (String(describing: middle))
        self.lastNameInput.text = (String(describing: last))
    }
    
    func updateAddress() {
        let add1=(parent as! CountingNavigationController).addressOneOutput
        let add2=(parent as! CountingNavigationController).addressTwoOutput
        let city=(parent as! CountingNavigationController).cityOutput
        let email=(parent as! CountingNavigationController).emailOutput
        self.addressOneInput.text = (String(describing: add1))
        self.addressTwoInput.text = (String(describing: add2))
        self.cityInput.text = (String(describing: city))
        self.emailInput.text = (String(describing: email))
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
