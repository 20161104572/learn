//
//  ViewController.swift
//  jisuanqi
//
//  Created by 20161104572 on 2018/9/26.
//  Copyright © 2018年 20161104572. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var re = 0;
    var cdd = 0;
    var judge = 0;
    var number = 0;
    var result_1="";
    @IBAction func n1(_ sender: Any) {
        if re == 1{
            result.text = "1"
        }
        else{
            result.text = result.text! + "1"
        }
    }
    @IBAction func n2(_ sender: Any) {
        if re == 1{
            result.text = "2"
        }
        else{
            result.text = result.text! + "2"
        }
    }
    @IBAction func n3(_ sender: Any) {
        if re == 1{
            result.text = "3"
        }
        else{
            result.text = result.text! + "3"
        }
    }
    @IBAction func n4(_ sender: Any) {
        if re == 1{
            result.text = "4"
        }
        else{
            result.text = result.text! + "4"
        }
    }
    @IBAction func n5(_ sender: Any) {
        if re == 1{
            result.text = "5"
        }
        else{
            result.text = result.text! + "5"
        }
        
    }
    @IBAction func n6(_ sender: Any) {
        if re == 1{
            result.text = "6"
        }
        else{
            result.text = result.text! + "6"
        }
    }
    @IBAction func n7(_ sender: Any) {
        if re == 1{
            result.text = "7"
        }
        else{
            result.text = result.text! + "7"
        }
    }
    @IBAction func n8(_ sender: Any) {
        if re == 1{
            result.text = "8"
        }
        else{
            result.text = result.text! + "8"
        }
    }
    @IBAction func n9(_ sender: Any) {
        if re == 1{
            result.text = "9"
        }
        else{
            result.text = result.text! + "9"
        }
    }
    @IBAction func n0(_ sender: Any) {
        if re == 1{
            result.text = "0"
        }
        else{
            result.text = result.text! + "0"
        }
    }
    @IBAction func AC(_ sender: Any) {
        result.text = ""
        re = 0
    }
    @IBAction func ADD(_ sender: Any) {
        if cdd == 1{
            let a = Double(result_1)!
            let b = Double(result.text!)!
            let c = a + b
            
            result_1 = String(c)
            
            result.text = ""
            
            number = 2
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1 = String(x)
                result.text=""
                number = 2
                re = 0
            }
        }
    }
    @IBAction func deleat(_ sender: Any) {
        if cdd == 1{
            let a = Double(result_1)!
            let b = Double(result.text!)!
            let c = a - b
            
            result_1 = String(c)
            
            result.text = ""
            
            number = 1
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
               let x = Double(result.text!)!
               result_1 = String(x)
                result.text=""
                number = 1
                re = 0
            }
        }
    }
    @IBAction func mult(_ sender: Any) {
        if cdd == 1{
            let a = Double(result_1)!
            let b = Double(result.text!)!
            let c = a*b
            
            result_1 = String(c)
            
            result.text = ""
            
            number = 3
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1 = String(x)
                result.text=""
                number = 3
                re = 0
                cdd = 1
            }
        }
    }
    @IBAction func equal(_ sender: Any) {
        var d:Double
        var c:Double
        let x = Double(result_1)
        c = (result.text! as NSString).doubleValue
        if number == 1{
            d = x - c
        }else if number == 2{
            d = x + c
        }else if number == 3{
            d = x*c
        }else{
            d = 1000
        }
        result_2=String(c)
        if judge == 1{
            result.text = String(format:"%f",d)
        }else{
            result.text = String(format:"%.0f",d)
        }
        re = 1
        judge = 0
        cdd = 0
    }
    @IBAction func point(_ sender: Any) {
        result.text = result.text! + "."
        judge = 1
    }
    

}

