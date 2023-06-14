//
//  SettingsViewController.swift
//  Protocols
//
//  Created by Димон on 13.06.23.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet private weak var saveButton: UIButton!
    
    @IBOutlet private weak var fontSizeLabel: UILabel!
    
    var delegate: SettingsDelegate?
    
    var config: TextConfig = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Customization"
        
        saveButton.layer.borderWidth = 1
        saveButton.layer.borderColor = UIColor.systemBlue.cgColor
        saveButton.layer.cornerRadius = 8
        
        fontSizeLabel.text = "\(config.fontSize)"
    }
    
    @IBAction private func saveAction() {
        delegate?.saveTextConfig(config)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func changeTextAction(_ sender: UIButton) {
        config.text = sender.titleLabel?.text ?? ""
    }
    
    @IBAction func changeTextColorAction(_ sender: UIButton) {
        config.textColor = sender.titleLabel?.textColor ?? .black
    }
    
    @IBAction func changeFontAction(_ sender: UIButton) {
        config.font = sender.titleLabel?.font ?? .systemFont(ofSize: config.fontSize)
    }
    
    @IBAction func increaseFontSizeAction(_ sender: Any) {
        if config.fontSize < 100 {
            config.fontSize = config.fontSize + 1
            fontSizeLabel.text = "\(config.fontSize)"
        }
    }
    
    @IBAction func decreaseFontSizeAction(_ sender: Any) {
        if config.fontSize > 0 {
            config.fontSize = config.fontSize - 1
            fontSizeLabel.text = "\(config.fontSize)"
        }
    }
}
