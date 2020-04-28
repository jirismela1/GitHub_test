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
    @IBOutlet var rgbValuesCollection: [UILabel]!
    
    
    
    @IBOutlet var slidersRGBCollection: [UISlider]!
    @IBAction func slidersRGB(_ sender: UISlider) {
        rgbValuesCollection[sender.tag].text = String(Int(sender.value))
        
    }
    @IBOutlet weak var textFont: UILabel!
    @IBOutlet weak var fontPickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in slidersRGBCollection.indices{
            slidersRGBCollection[index].value = 100
            rgbValuesCollection[index].text = "100"
        }
        
        // Do any additional setup after loading the view.
    }


}

