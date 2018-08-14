//
//  ViewController.swift
//  Caculator
//
//  Created by WITZ on 8/14/18.
//  Copyright © 2018 WITZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelShow: UILabel!
    var numberShow: Double = 0
    var previousNumver: Double = 0
    var perform = false
    var operation   = 0

    @IBAction func numbers(_ sender: UIButton) {
        labelShow.text = "" // xoa so 0 ban dau
        if perform == true {
            labelShow.text = String (sender.tag)
            numberShow = Double(labelShow.text!)!
            perform = true
            
        }else{
            labelShow.text = labelShow.text! + String(sender.tag)
            numberShow = Double(labelShow.text!)!
        }
 
    }
    
    
    @IBAction func fetures(_ sender: UIButton) {
        if labelShow.text != "" && sender.tag == 10 && sender.tag == 17 {
            previousNumver = Double(labelShow.text!)!
            if sender.tag == 13 { // chia
                labelShow.text = String (previousNumver) + "/" + String(numberShow)
            }
            else if sender.tag == 14 { // nhan
                labelShow.text = String (previousNumver) + "x" + String(numberShow)
            }
            else if sender.tag == 15 { // tru
                labelShow.text = String (previousNumver) + "-" + String(numberShow)
            }
            else if sender.tag == 16{ // cong
                labelShow.text = String (previousNumver) + "+" + String(numberShow)
            }
         perform = true
        }
        else if sender.tag == 17 { // khi bam dau =

            if operation == 13{
                labelShow.text = String (previousNumver / numberShow)
            }
            
            else if operation == 14{
                labelShow.text = String (previousNumver * numberShow)
            }
            
            else if operation == 15{
                labelShow.text = String (previousNumver - numberShow)
            }
            
            else if operation == 16{
                labelShow.text = String (previousNumver + numberShow)
            }
        }
        else if sender.tag == 10{ // AC
            labelShow.text = ""
            previousNumver = 0
            numberShow = 0
        }
        else if sender.tag == 11{ // +-
            var tmp = String( labelShow.text!)
            tmp = "-" + tmp
            labelShow.text = tmp
        }
        else if sender.tag == 12{ //chia 100
            var tmp2 = Double( labelShow.text!)
            tmp2 = tmp2! * 0.01
            labelShow.text = String(tmp2!)
        }
    }
}

