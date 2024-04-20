//
//  ViewController.swift
//  0419text
//
//  Created by TsengWen on 2024/4/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var percentTextField: UITextField!
    @IBOutlet weak var memberTextFeild: UITextField!
    @IBOutlet weak var totalpriceLabel: UILabel!
    @IBOutlet weak var totaltipLabel: UILabel!
    @IBOutlet weak var averagepriceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalpriceLabel.text = "0"
        totaltipLabel.text = "0"
        averagepriceLabel.text = "0"
        
    }
    
   
    @IBAction func caculate(_ sender: UIButton) {
       
        priceTextField.resignFirstResponder()
        percentTextField.resignFirstResponder()
        memberTextFeild.resignFirstResponder()
         
        
        let priceText = priceTextField.text!
        let percentText = percentTextField.text!
        let memberText = memberTextFeild.text!
        let price = Double(priceText)
        let percent = Double(percentText)
        let member = Double(memberText)
        if price != nil, percent != nil, member != nil {
            let tip = price! * percent! / 100
            let total = price! + tip
            let share = total / member!
            
            totalpriceLabel.text = String(total)
            totaltipLabel.text = String(tip)
            averagepriceLabel.text = String(format: "%.2f",share)
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        priceTextField.text = ""
        percentTextField.text = ""
        memberTextFeild.text = ""
        totalpriceLabel.text = "0"
        totaltipLabel.text = "0"
        averagepriceLabel.text = "0"
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        view.endEditing(true)
    }
}
