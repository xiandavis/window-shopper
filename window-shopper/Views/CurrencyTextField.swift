//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Christian Davis on 10/26/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import UIKit

@IBDesignable // called by IB. Allows below modifications to show up BEFORE runtime
class CurrencyTextField: UITextField { // blue words are properties of this class!
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20 // Mark specifies float to avoid automatically being set as a Double
        let currencyLbl = UILabel(frame: CGRect(x: 10, y: (frame.size.height / 2) - size / 2, width: size, height: size)) // Mark used a value of 5 for x, but I think an x value of 10 looks better.
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9367641135, green: 0.9367641135, blue: 0.9367641135, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true // Mark illustrates that the radiused corners of these [currency icon] rectangles do not display without this statement, as draw(CGRect) removes the behavior. He adds a similar statement inside customizeView() below.
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current // .locale gets the country your device is setup for
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() { // @IBDesignable above requires this func
        customizeView()
    }

    override func awakeFromNib() { // called at Runtime
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() { // Mark made this func name up and moved below code out of awakeFromNib() above so that it could be called from both prepareForInterfaceBuilder() AND from awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) // type 'color literal', set to White @ 25% opacity. backgroundColor is a property of UITextField
        layer.cornerRadius = 5.0 // layer is a property of UITextField (hence blue text color)
        textAlignment = .center // textAlignment is a property of UITextField
        
        clipsToBounds = true // Overrides draw(CGRect) allowing radiused corners of text fields to display. See similar statement inside draw(CGRect) above
        
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
