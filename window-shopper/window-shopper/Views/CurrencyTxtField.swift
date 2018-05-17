//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Andrew Ramirez on 5/17/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import UIKit

//@IBDesignable allows stuff in interface builder to look like what happens after build
@IBDesignable
class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    //When text field comes up this code will run.
    override func awakeFromNib() {
        super.awakeFromNib()
            customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.9953911901, green: 0.9881951213, blue: 1, alpha: 0.2487621039)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //Force unwrapped optional must always have data or else program will crash. Must initialize placeholder with empty string
        //if placeholder == nil {
        //    placeholder = " "
        //}
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            //overrides the regluar placeholder and uses attributed string instead
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
