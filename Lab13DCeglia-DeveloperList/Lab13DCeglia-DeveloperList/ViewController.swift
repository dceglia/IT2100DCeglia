//
//  ViewController.swift
//  Lab13DCeglia-DeveloperList
//
//  Created by David Ceglia on 4/28/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let webDevelopers: [String] = ["Al Dente", "Armand Hammer", "Barry Cade", "Cara Van"]
    let mobileDevelopers: [String] = ["Ginger Ayle", "June Bugg", "Iona Ford", "Sue Flay",
                                       "Tim Burr", "Will Wynn"]
    
    let webDevelopersTitle: [String] = ["Full Stack", "ASP.NET", "PHP", "Node.js", "Angular", "React"]
    let mobileDevelopersTitle: [String] = ["iOS with Swift", "iOS and Android", "iOS with Objective-C", "iOS with Swift and Objective-C", "Android", "Ionic"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

