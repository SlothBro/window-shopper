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
    
    //don't ever implement this function if it's empty, Don't use super on this either.
    // when implementing DrawRect, corner radius and other attributes might break, 'use clip to bounds'
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9953911901, green: 0.9881951213, blue: 1, alpha: 0.7966549296)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
        
//        let size: CGFloat = 20
//        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
//        currencyLbl.backgroundColor = #colorLiteral(red: 0.8840534687, green: 0.8784657121, blue: 0.8883432746, alpha: 0.7970675616)
//        currencyLbl.textAlignment = .center
//        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
//        currencyLbl.layer.cornerRadius = 5.0
//        currencyLbl.clipsToBounds = true
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        formatter.locale = .current
//        currencyLbl.text = formatter.currencySymbol
//        addSubview(currencyLbl)
    

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
        clipsToBounds = true
    
        
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

