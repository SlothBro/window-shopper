//
//  ViewController.swift
//  window-shopper
//
//  Created by Andrew Ramirez on 5/17/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet var wageTxt: CurrencyTxtField!
    @IBOutlet var priceTxt: CurrencyTxtField!
    
    @IBOutlet var resultLbl: UILabel!
    @IBOutlet var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Create a button Progammatically and then attach it to a text field property
        //Pro-Tip = to set text on UIButton use '.setTitle' and DON'T use .title
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
            calcBtn.backgroundColor = #colorLiteral(red: 0.9270872474, green: 0.481680572, blue: 0.1556533575, alpha: 1)
            calcBtn.setTitle("Calculate", for: .normal)
            calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
            wageTxt.inputAccessoryView = calcBtn
            priceTxt.inputAccessoryView = calcBtn
        
            resultLbl.isHidden = true
            hoursLbl.isHidden = true
        
    }
    
    @objc func calculate() {
        //This is named like IBOutlet wageTxt but this is a local variable (different just named the same)
        //First we check to see if the variables contain empty strings
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            // Next we cast the variable into a Double type
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

