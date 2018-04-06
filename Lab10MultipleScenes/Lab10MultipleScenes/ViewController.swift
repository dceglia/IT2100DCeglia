//
//  ViewController.swift
//  Lab10MultipleScenes
//
//  Created by David Ceglia on 4/4/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scene1Label: UILabel!
    @IBOutlet weak var scene1NameLabel: UILabel!
    @IBOutlet weak var scene1TextField: UITextField!
    @IBOutlet weak var scene1Button: UIButton!
    
    @IBAction func updateNameField(_ send: Any) {
        (presentedViewController as! Scene2ViewController).scene2LabelOutput.text = scene1TextField.text
    }
    
    @IBAction func hideKeyboard(_ send: Any) {
        scene1TextField.resignFirstResponder()
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let _:ViewController = segue.source as! ViewController
        let _:Scene2ViewController = segue.destination as! Scene2ViewController
    }
    
    @IBAction func unwindToViewController(segue:UIStoryboardSegue) { }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

