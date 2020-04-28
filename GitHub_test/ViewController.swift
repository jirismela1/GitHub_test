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
        
        let red = Int(slidersRGBCollection[0].value)
        let green = Int(slidersRGBCollection[1].value)
        let blue = Int(slidersRGBCollection[2].value)
        
        RGBValueLabel.text = "RGB(\(red), \(green), \(blue))"
        
        colorCubeView.backgroundColor = UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)

    }
    @IBOutlet weak var textFont: UILabel!
    @IBOutlet weak var fontPickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in slidersRGBCollection.indices{
            slidersRGBCollection[index].value = 100
            rgbValuesCollection[index].text = "100"
        }
        RGBValueLabel.text = "RGB(100, 100, 100)"
        colorCubeView.backgroundColor = .white
        
        // Do any additional setup after loading the view.
    }


}

