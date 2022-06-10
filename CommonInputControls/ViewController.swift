//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Aponte, Raynaldo E on 4/5/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Creating a connection with programmatic actions 
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        if toggle.isOn {
            print("The switch is turned on.")
        } else {
            print("The switch is turned off.")
        }
        
        print("The value of the slider is \(slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnTapped(_ sender: UITextField) {
        if let text = sender.text {
            myLabel.text = text
            print(text)
        }
    }
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

