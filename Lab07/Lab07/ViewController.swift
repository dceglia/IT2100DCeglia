//
//  ViewController.swift
//  Lab07
//
//  Created by David Ceglia on 3/4/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var turkeyView1: UIImageView!
    @IBOutlet weak var turkeyView2: UIImageView!
    @IBOutlet weak var turkeyView3: UIImageView!
    @IBOutlet weak var turkeyView4: UIImageView!
    @IBOutlet weak var turkeyView5: UIImageView!
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var stepperValue: UIStepper!
    @IBOutlet weak var sliderOutput: UILabel!
    @IBOutlet weak var stepperOutput: UILabel!
    
    @IBAction func toggleAnimation(_ sender: Any) {
    }
    @IBAction func setSpeed(_ sender: Any) {
    }
    @IBAction func incrementSpeed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let gobbleAnimation: [UIImage] = [
            UIImage(named: "turkey1")!,
            UIImage(named: "turkey2")!,
            UIImage(named: "turkey3")!,
            UIImage(named: "turkey4")!,
            UIImage(named: "turkey5")!,
            UIImage(named: "turkey6")!,
            UIImage(named: "turkey7")!,
            UIImage(named: "turkey8")!,
            UIImage(named: "turkey9")!,
            UIImage(named: "turkey10")!,
            UIImage(named: "turkey11")!,
            UIImage(named: "turkey12")!,
            UIImage(named: "turkey13")!,
            UIImage(named: "turkey14")!,
            UIImage(named: "turkey15")!,
            UIImage(named: "turkey16")!,
            UIImage(named: "turkey17")!,
            UIImage(named: "turkey18")!,
            UIImage(named: "turkey19")!,
            UIImage(named: "turkey20")!,
        ]
        turkeyView1.animationImages=gobbleAnimation
        turkeyView2.animationImages=gobbleAnimation
        turkeyView3.animationImages=gobbleAnimation
        turkeyView4.animationImages=gobbleAnimation
        turkeyView5.animationImages=gobbleAnimation
        turkeyView1.animationDuration=1.0
        turkeyView2.animationDuration=1.0
        turkeyView3.animationDuration=1.0
        turkeyView4.animationDuration=1.0
        turkeyView5.animationDuration=1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

