//
//  SettingsDelegate.swift
//  Protocols
//
//  Created by Димон on 13.06.23.
//

import UIKit

protocol SettingsDelegate {
    func saveTextConfig(_ config: TextConfig)
}

struct TextConfig {
    var text: String
    var textColor: UIColor
    var font: UIFont
    var fontSize: CGFloat
    
    
    init() {
        self.text = "Hello World"
        self.textColor = .black
        self.font = .systemFont(ofSize: 32)
        self.fontSize = 32
    }
    
    init(text: String, textColor: UIColor, font: UIFont, fontSize: CGFloat) {
        self.text = text
        self.textColor = textColor
        self.font = font
        self.fontSize = fontSize
    }
}
