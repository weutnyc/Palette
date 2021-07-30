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
        setColor()
        setValue(for: redLable, greenLable, blueLable)
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider: setValue(for: redLable)
        case greenSlider: setValue(for: greenLable)
        default: setValue(for: blueLable)
        }
    }
    
    private func setColor() {
        paletteView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(greenSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach {
            label in
            switch label {
            case redLable: label.text = string(from: redSlider)
            case greenLable: label.text = string(from: greenSlider)
            default: label.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}


