//
//  GenericViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by David Ceglia on 4/17/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var middleNameInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
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
//        let first=(parent as! CountingNavigationController).firstNameOutput
//        let middle=(parent as! CountingNavigationController).middleNameOutput
//        let last=(parent as! CountingNavigationController).lastNameOutput
//        self.firstNameInput.text = (String(describing: first))
//        self.middleNameInput.text = (String(describing: middle))
//        self.lastNameInput.text  = (String(describing: last))
        
        (parent as! CountingNavigationController).firstNameOutput = firstNameInput.text!
        (parent as! CountingNavigationController).middleNameOutput = middleNameInput.text!
        (parent as! CountingNavigationController).lastNameOutput = lastNameInput.text!
        
    }
    
    func updateAddress() {

        (parent as! CountingNavigationController).addressOneOutput = addressOneInput.text!
        (parent as! CountingNavigationController).addressTwoOutput = addressTwoInput.text!
        (parent as! CountingNavigationController).cityOutput = cityInput.text!
        (parent as! CountingNavigationController).emailOutput = emailInput.text!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set <UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
