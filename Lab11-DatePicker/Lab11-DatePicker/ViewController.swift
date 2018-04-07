//
//  ViewController.swift
//  Lab11-DatePicker
//
//  Created by David Ceglia on 4/4/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var segueButton: UIButton!
    
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let _:ViewController = segue.source as! ViewController
        let _:AnimalChooserViewController = segue.destination as! AnimalChooserViewController
    }
    
    func displayAnimal(chosenAnimal: String, withSound chosenSound:String, fromComponent chosenComponent: String) {
        outputLabel.text = "You changed \(chosenComponent) (\(chosenAnimal) and the sound \(chosenSound))"
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

