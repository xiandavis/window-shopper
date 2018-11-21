//
//  ViewController.swift
//  window-shopper
//
//  Created by Christian Davis on 10/26/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60)) //  typically use UIButton with frame like this when creating a button programmatically
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1) // type color literal to access swatch
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside) // a selector is a func that will be called at a later point in time. It is using objective-C runtime (feature of objective-C messaging, sending strings btn classes that can call a func. NOT A SWIFT THING)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }

    // Mark deletes boilerplate didReceiveMemoryWarning()
    
    @objc func calculate() { // @objc added by compiler after clicking Fix button. Earlier versions of Swift did this under the hood automatically, but Swift 4 wants you to know when a func is an obj-c runtime func
        
        print("We got here")
    }



}

