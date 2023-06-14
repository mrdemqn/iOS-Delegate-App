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
        saveButton.layer.cornerRadius = 5
        
        fontSizeLabel.text = "\(config.fontSize)"
    }
    
    @IBAction private func save() {
        delegate?.saveTextConfig(config)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func setTextHelloWorldAction(_ sender: UIButton) {
        config.text = sender.titleLabel?.text ?? ""
    }
    
    @IBAction func setTextSomeLAbelAction(_ sender: UIButton) {
        config.text = sender.titleLabel?.text ?? ""
    }
    
    @IBAction func setTextCustomizationAction(_ sender: UIButton) {
        config.text = sender.titleLabel?.text ?? ""
    }
    
    @IBAction func setTextDelegateAppAction(_ sender: UIButton) {
        config.text = sender.titleLabel?.text ?? ""
    }
    
    @IBAction func setBlackColor(_ sender: Any) {
        config.textColor = .black
    }
    
    @IBAction func setRedColor(_ sender: Any) {
        config.textColor = .red
    }
    
    @IBAction func setBlueColor(_ sender: Any) {
        config.textColor = .systemBlue
    }
    
    @IBAction func setGreenColor(_ sender: Any) {
        config.textColor = .green
    }
    
    @IBAction func setSystemFont(_ sender: Any) {
        config.font = UIFont.systemFont(ofSize: config.fontSize)
    }
    
    @IBAction func setItalicSystemFont(_ sender: Any) {
        config.font = UIFont.italicSystemFont(ofSize: config.fontSize)
    }
    
    @IBAction func increaseFontSize(_ sender: Any) {
        if config.fontSize < 100 {
            config.fontSize = config.fontSize + 1
            fontSizeLabel.text = "\(config.fontSize)"
        }
    }
    
    @IBAction func decreaseFontSize(_ sender: Any) {
        if config.fontSize > 0 {
            config.fontSize = config.fontSize - 1
            fontSizeLabel.text = "\(config.fontSize)"
        }
    }
}
