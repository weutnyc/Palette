//
//  ViewController.swift
//  Palette
//
//  Created by Anton on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var paletteView: UIView!
    @IBOutlet var redLable: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLable: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paletteView.layer.cornerRadius = 10
        redLable.text = String(redSlider.value)
        greenLable.text = String(greenSlider.value)
        blueLable.text = String(blueSlider.value)
    }
    
    override func viewWillLayoutSubviews() {
            paletteView.backgroundColor = UIColor(
                displayP3Red: CGFloat(redSlider.value),
                green: CGFloat(greenSlider.value),
                blue: CGFloat(blueSlider.value),
                alpha: 1.0
            )
        }
    
    @IBAction func redSliderAction() {
        redLable.text = String(format: "%.2f", redSlider.value)
        
    }
    
    @IBAction func greenSliderAction() {
        greenLable.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        blueLable.text = String(format: "%.2f", blueSlider.value)
    }
}


