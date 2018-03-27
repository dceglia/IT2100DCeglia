//
//  ViewController.swift
//  Lab09DCeglia
//
//  Created by David Ceglia on 3/20/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userOutput: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var favoriteLanguage: UILabel!
    @IBOutlet weak var selectedAction: UITextView!
    
    @IBAction func showAlertWithFields(_ sender: Any) {
        let alertController = UIAlertController(title: "Enter Name and Email",
            message: "Please enter your name and e-mail.",
            preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addTextField(configurationHandler: {(textField: UITextField) in
            textField.placeholder="Name"})
        
        alertController.addTextField(configurationHandler: {(textField: UITextField) in
            textField.placeholder="Email Address"})
        
        let submitAction = UIAlertAction(title: "OK",
            style: UIAlertActionStyle.default,
            handler: {(alertAction: UIAlertAction) in
                let emailAddress: String = alertController.textFields![0].text!
                let name: String = alertController.textFields![0].text!
                self.userEmail.text="Entered '\(emailAddress)'"
                self.userName.text="Entered '\(name)'"})
        
        alertController.addAction(submitAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    /////////////////////////////
    //////////// 2 //////////////
    /////////////////////////////
    
    @IBAction func showAlertWithOptions(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert with Buttons Selected",
            message: "This alert allows multiple actions",
            preferredStyle: UIAlertControllerStyle.alert)
        
        let cSharp = UIAlertAction(title: "C#",
                style: UIAlertActionStyle.default,
                handler: {(alertAction: UIAlertAction) in
                    self.favoriteLanguage.text="C# selected"})
        
        let java = UIAlertAction(title: "Java",
                style: UIAlertActionStyle.default,
                handler: {(alertAction: UIAlertAction) in
                    self.favoriteLanguage.text="Java selected"})
        
        let swift = UIAlertAction(title: "Swift",
                style: UIAlertActionStyle.default,
                handler: {(alertAction: UIAlertAction) in
                    self.favoriteLanguage.text="Swift selected"})
        
        alertController.addAction(cSharp)
        alertController.addAction(java)
        alertController.addAction(swift)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    ///////////////////////////
    ////////// 3 //////////////
    ///////////////////////////
    
    @IBAction func showActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Action Sheet",
            message: "Submit a follow-up",
            preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let sendInfo = UIAlertAction(title: "Send Information",
                style: UIAlertActionStyle.default,
                handler: {(alertAction: UIAlertAction) in
                    self.userOutput.text="Thank you! We will send information about " +
                        self.selectedAction.text!})
        
        let noSendInfo = UIAlertAction(title: "Do not send Information",
                style: UIAlertActionStyle.default,
                handler: {(alertAction: UIAlertAction) in
                    self.selectedAction.text="Thank you!"})
        
        let cancel = UIAlertAction(title: "Cancel",
                style: UIAlertActionStyle.cancel,
                handler: {(alertAction: UIAlertAction) in
                    self.selectedAction.text="Pressed Cancel"})
        
        alertController.addAction(sendInfo)
        alertController.addAction(noSendInfo)
        alertController.addAction(cancel)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
///////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


