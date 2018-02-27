//
//  ViewController.swift
//  Lab06FindReplace
//
//  Created by David Ceglia on 2/21/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var findField: UITextField!
    @IBOutlet weak var replaceField: UITextField!
    @IBOutlet weak var textViewBox: UITextView!
    
    @IBAction func findReplaceOperation(_ sender: Any) {
        textViewBox.text! = textViewBox.text.replacingOccurrences(of: findField.text!, with: replaceField.text!)
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

