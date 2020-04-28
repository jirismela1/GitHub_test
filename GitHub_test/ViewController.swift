//
//  ViewController.swift
//  GitHub_test
//
//  Created by Jirka  on 28/04/2020.
//  Copyright © 2020 JirkaSmela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myFonts = ["Copperplate",
                        "Thonburi",
                        "GillSans-Bold",
                        "AvenirNextCondensed-Heavy",
                        "HelveticaNeue",
                        "Georgia",
                        "Kailasa",
                        "AppleColorEmoji",
                        "Futura-Bold",
                        "Chalkduster",
                        "Courier",
                        "Cochin"]

    @IBOutlet weak var colorCubeView: UIView!
    @IBOutlet weak var RGBValueLabel: UILabel!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBAction func slidersRGB(_ sender: UISlider) {
      
    }
    @IBOutlet weak var textFont: UILabel!
    @IBOutlet weak var fontPickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fontPickerView.delegate = self
        fontPickerView.dataSource = self
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        myFonts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        myFonts[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textFont.font = UIFont(name: myFonts[row], size: 28)
    }
}
