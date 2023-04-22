//
//  Button.swift
//  TINF
//
//  Created by Евгений Парфененков on 22.04.2023.
//

import Foundation
import UIKit

class PerfectButton: UIButton {
    
//    var width: Int
//    var height: Int

    var cgRect: CGRect
    var text: String
    
    init(cgRect: CGRect, text: String) {
        self.cgRect = cgRect
        self.text = text
        super.init(frame: cgRect)
        
        self.setTitle(text, for: .normal)
        self.setTitleColor(UIColor(red: 0.259, green: 0.545, blue: 0.976, alpha: 1), for: .normal)
        
        self.layer.cornerRadius = 12
        
        if self.isHighlighted {
            self.backgroundColor = UIColor(red: 0, green: 0.063, blue: 0.141, alpha: 0.06)
        } else {
            self.backgroundColor = UIColor(red: 0, green: 0.063, blue: 0.141, alpha: 0.03)
        }

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
