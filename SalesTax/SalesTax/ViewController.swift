//
//  ViewController.swift
//  SalesTax
//
//  Created by Monique Shaqiri on 03.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PriceTxt: UITextField!
    @IBOutlet weak var SellsTxt: UITextField!
    @IBOutlet weak var TotalPriceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TotalPriceLbl.text = ""
    }

    @IBAction func CalculateBtn(_ sender: UIButton) {
        let price = Double(PriceTxt.text!)!
        let sellsTax = Double(SellsTxt.text!)!
        let TotalSellsTxt = price * sellsTax
        let TotalPrice = price + TotalSellsTxt
         TotalPriceLbl.text = "$\(TotalPrice)"
    }
    
}

