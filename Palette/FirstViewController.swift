//
//  FirstViewController.swift
//  Palette
//
//  Created by Anton on 23.04.2021.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class FirstViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as! SettingsViewController
        settingsVC.delegate = self
        settingsVC.viewColor = view.backgroundColor
    }
}

// MARK: - ColorDelegate
extension FirstViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
