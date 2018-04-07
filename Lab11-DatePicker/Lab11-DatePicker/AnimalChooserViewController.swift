//
//  AnimalChooserViewController.swift
//  Lab11-DatePicker
//
//  Created by David Ceglia on 4/6/18.
//  Copyright © 2018 David Ceglia. All rights reserved.
//

import UIKit

class AnimalChooserViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    let kComponentCount: Int = 2
    let kAnimalComponent: Int = 0
    let kSoundComponent: Int = 1
    
    var animalNames: [String] = []
    var animalSounds: [String] = []
    var animalImages: [UIImageView] = []
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return kComponentCount
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component==kAnimalComponent {
            return animalNames.count;
        } else {
            return animalSounds.count;
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        if component==kAnimalComponent {
            let chosenImageView: UIImageView = animalImages[row]
            let workaroundImageView: UIImageView = UIImageView(frame: chosenImageView.frame)
            workaroundImageView.backgroundColor = UIColor(patternImage: chosenImageView.image!)
            return workaroundImageView
        } else {
            let soundLabel: UILabel = UILabel (frame: CGRect())
            soundLabel.backgroundColor = UIColor.clear
            soundLabel.text = animalSounds[row]
            return soundLabel
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 55.0
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        if component==kAnimalComponent {
            return 75.0;
        } else {
            return 150.0;
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let initialView: ViewController = presentingViewController as! ViewController
        
        if component==kAnimalComponent {
            let chosenSound: Int = pickerView.selectedRow(inComponent: kSoundComponent)
            initialView.displayAnimal(chosenAnimal: animalNames[row],
            withSound: animalSounds[chosenSound], fromComponent: "the Animal")
        } else {
            let chosenAnimal: Int = pickerView.selectedRow(inComponent: kAnimalComponent)
            initialView.displayAnimal(chosenAnimal: animalNames[chosenAnimal],
            withSound: animalSounds[row], fromComponent: "the Sound")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let initialView: ViewController = presentingViewController as! ViewController
        initialView.displayAnimal(chosenAnimal: animalNames[0],
            withSound: animalSounds[0], fromComponent: "nothing yet...")
    }
 
    @IBAction func dismissAnimalChooser(sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        animalNames=["Mouse","Goose","Cat","Dog","Snake","Bear","Pig"]
        animalSounds=["Oink","Rawr","Ssss","Roof","Meow","Honk","Squeak"]
        animalImages=[
            UIImageView(image: UIImage(named: "mouse.png")),
            UIImageView(image: UIImage(named: "goose.png")),
            UIImageView(image: UIImage(named: "cat.png")),
            UIImageView(image: UIImage(named: "dog.png")),
            UIImageView(image: UIImage(named: "snake.png")),
            UIImageView(image: UIImage(named: "bear.png")),
            UIImageView(image: UIImage(named: "pig.png")),
        ]
        // preferredContentSize = CGSize(340,380)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
