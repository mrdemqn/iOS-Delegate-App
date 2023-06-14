//
//  ViewController.swift
//  Protocols
//
//  Created by Димон on 13.06.23.
//

import UIKit

class ViewController: UIViewController {
    
    var config: TextConfig = .init()
    
    @IBOutlet private weak var customisedLabel: UILabel!
    
    @IBAction func pushToCustomizeScreen(_ sender: Any) {
        let settingsStoryboard = UIStoryboard(name: "SettingsStoryboard", bundle: nil)
        let settingsVC = settingsStoryboard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        settingsVC.delegate = self
        settingsVC.config = config
        
        navigationController?.pushViewController(settingsVC, animated: true)
    }
    
}

extension ViewController: SettingsDelegate {
    func saveTextConfig(_ config: TextConfig) {
        customisedLabel.text = config.text
        customisedLabel.textColor = config.textColor
        customisedLabel.font = config.font
        customisedLabel.font = customisedLabel.font.withSize(config.fontSize)
        self.config = config
    }
}
