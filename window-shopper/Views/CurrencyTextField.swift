//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Christian Davis on 10/26/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField { // blue words are properties of this class!

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) // type 'color literal', set to White @ 25% opacity. backgroundColor is a property of UITextField
        layer.cornerRadius = 5.0 // layer is a property of UITextField (hence blue text color)
        textAlignment = .center // textAlignment is a property of UITextField
        
        /*
        if placeholder == nil {
            placeholder = " " // initialization/safety check for force unwrapped optional [placeholder!] below. placeholder is a property of UITextField. Mark added a space in string so code would run
        }
        
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place // if this is set, it will override the regular placeholder above. attributedPlaceholder is a property of UITextField
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        */
 
        if let p = placeholder { // if placeholder is not nil, assign to p. Renders above [folded] statements obsolete
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place // if this is set, it will override the regular placeholder above. attributedPlaceholder is a property of UITextField
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
