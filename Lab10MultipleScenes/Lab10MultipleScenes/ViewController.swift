//
//  ViewController.swift
//  Lab10MultipleScenes
//
//  Created by David Ceglia on 4/4/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//                                              ////
//  IBOutlets and Actions not allowed to be added...
//                                              ////
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let startingViewController:ViewController = segue.source as! ViewController
        let destinationViewController:Scene2ViewController = segue.destination as! Scene2ViewController
    }
    
    @IBAction func unwindToViewController(segue:UIStoryboardSegue) {
        
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

