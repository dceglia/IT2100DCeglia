//
//  ViewController.swift
//  Lab10-MultipleScenes
//
//  Created by David Ceglia on 3/29/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
//    @IBAction func updateLabel(_ sender: Any) {
//
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameField.text = (presentingViewController as! Scene2ViewController).nameLabel.text
        super.viewWillAppear(animated)
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

