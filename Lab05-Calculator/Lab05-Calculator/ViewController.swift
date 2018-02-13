//
//  ViewController.swift
//  Lab05-Calculator
//
//  Created by David Ceglia on 2/13/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var outputConcatenation: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBAction func concatenationAction(_ sender: Any) {
        outputConcatenation.text! = firstName.text! + " " + lastName.text!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

