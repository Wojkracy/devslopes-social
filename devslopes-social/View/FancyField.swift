//
//  FancyField.swift
//  devslopes-social
//
//  Created by Wojtek on 26.11.2017.
//  Copyright © 2017 Wojtek. All rights reserved.
//

import UIKit

class FancyField: UITextField {

    override func awakeFromNib() {          // znowu...
        super.awakeFromNib()
        
        layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 3.0
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {                // Po skasowaniu obwódki pola tekstowego znika wcięcie tekstu, który
        return bounds.insetBy(dx: 10, dy: 0)                                    // po zmianie styka się z krawędzią pola - teraz ponownie robimy wcięcie.
    }                                                                           // (ta funkcja wpływa tylko na tekst w placeholderze)
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 0)
    }
    
}
