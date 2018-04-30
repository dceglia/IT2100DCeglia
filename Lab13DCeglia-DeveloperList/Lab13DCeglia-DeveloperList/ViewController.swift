//
//  ViewController.swift
//  Lab13DCeglia-DeveloperList
//
//  Created by David Ceglia on 4/28/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let webDevelopersSection:Int = 0
    let mobileDevelopersSection:Int = 1
    let sectionCount:Int = 2
    
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "developerCell")! as UITableViewCell
        switch (indexPath.section) {
        case webDevelopersSection:
            cell.textLabel!.text=webDevelopers[indexPath.row]
        case mobileDevelopersSection:
            cell.textLabel!.text=mobileDevelopers[indexPath.row]
        default:
            cell.textLabel!.text="Unknown"
        }
        
        let developerImage: UIImage=UIImage(named: cell.textLabel!.text!)!
        cell.imageView!.image=developerImage
        
        return cell
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionCount
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case webDevelopersSection:
            return "Web Developers"
        case mobileDevelopersSection:
            return "Mobile Developers"
        default:
            return "Unknown"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case webDevelopersSection:
            return webDevelopers.count
        case mobileDevelopersSection:
            return mobileDevelopers.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var developerMessage: String
        
        switch indexPath.section {
        case webDevelopersSection:
            developerMessage = "You chose web developer - \(webDevelopers[indexPath.row])"
        case mobileDevelopersSection:
            developerMessage = "You chose mobile developer - \(mobileDevelopers[indexPath.row])"
        default: developerMessage = "I have no idea what you chose?!"
        }
        
        let alertController = UIAlertController(title: "Developer Selected",
            message: developerMessage,
            preferredStyle: UIAlertControllerStyle.alert)
        
        let defaultAction = UIAlertAction(title: "Ok",
            style: UIAlertActionStyle.cancel,
            handler: nil)
        
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }

}

