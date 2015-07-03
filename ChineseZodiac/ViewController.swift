//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Shaowei Zhang on 15/7/3.
//  Copyright © 2015年 Shaowei Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    
    @IBOutlet weak var image: UIImageView!
    
    //基准值 2008年是鼠年
    let offset = 2008 % 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //touchEnded 点击别的地方也隐藏键盘

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        //原本焦点在TEXTFIELD上 使它失去焦点 所以就会隐藏键盘
        yearOfBirth.resignFirstResponder()
        
        //var year = yearOfBirth.text.toInt()
        if let year = Int(yearOfBirth.text!){
            //swift2.0 会动态的识别 var 有没有进行修改 然后提示用户使用 let 来优化
            // var imageNumber = (year - offset) % 12
            let imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }else{
            // notify the user
        }

        
        
    }
}

