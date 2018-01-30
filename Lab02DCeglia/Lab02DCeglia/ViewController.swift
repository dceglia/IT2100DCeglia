//
//  ViewController.swift
//  Lab02DCeglia
//
//  Created by David Ceglia on 1/24/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myMessage: UILabel
        myMessage=UILabel(frame:CGRect(x: 30.0,y: 50.0,width: 300.0,height: 50.0))
        myMessage.font=UIFont.systemFont(ofSize: 48.0)
        myMessage.text="Hello Xcode"
        view.addSubview(myMessage)
        NSLog("Hello Xcode, Again")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

