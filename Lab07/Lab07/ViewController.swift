//
//  ViewController.swift
//  Lab07
//
//  Created by David Ceglia on 3/4/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var stepperValue: UIStepper!
    @IBOutlet weak var sliderOutput: UILabel!
    @IBOutlet weak var stepperOutput: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

