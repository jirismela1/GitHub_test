//
//  ViewController.swift
//  GitHub_test
//
//  Created by Jirka  on 28/04/2020.
//  Copyright © 2020 JirkaSmela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorCubeView: UIView!
    @IBOutlet weak var RGBValueLabel: UILabel!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBAction func slidersRGB(_ sender: UISlider) {
        switch sender.tag{
        case 0:
            redValueLabel.text = String(Int(sender.value))
        case 1:
            greenValueLabel.text = String(Int(sender.value))
        case 2:
            blueValueLabel.text = String(Int(sender.value))
        default:
            break
        }
    }
    @IBOutlet weak var textFont: UILabel!
    @IBOutlet weak var fontPickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

