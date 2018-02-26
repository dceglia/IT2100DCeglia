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
    
    ////////     Option 1     ///////
    
    @IBAction func findReplaceOperation(_ sender: Any) {
        textViewBox.text! = textViewBox.text.replacingOccurrences(of: findField.text!, with: replaceField.text!)
    }
        ///////    Option 2     ////////
        
//    @IBAction func findReplaceOperation() {
//        if textViewBox.containsString(findField.text!) {
//            print(replaceField)  // to instance of string in "find" field...
//        }
        
        /////// Option 3 /////////
        
 //   @IBAction func findReplaceOperation(of target: findField!,
 //                       with replacement: replaceField!) -> String
 //
 //   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

