//
//  RoundBtn.swift
//  devslopes-social
//
//  Created by Wojtek on 26.11.2017.
//  Copyright © 2017 Wojtek. All rights reserved.
//

import UIKit

class RoundBtn: UIButton {

    override func awakeFromNib() { //trzeba znowu wklepać niba
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor // kolor cienia
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0 // długość rzutu ?
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        imageView?.contentMode = .scaleAspectFit            //czasami nie działa ustawienie tej opcji w main storyboard (prawdopodobnie z powodu starej wersji XCode)
        
    }
    
    override func layoutSubviews() {       // chcąc zrobić okrągły przycisk, trzeba zrobić to w layoutSubviews - będziemy bazować na szerokości przycisku (frame width), która
        super.layoutSubviews()             // w awakeFromNib nie jest jeszcze obliczona.
        
        layer.cornerRadius = self.frame.width / 2
    }

}
