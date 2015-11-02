//
//  ViewController.swift
//  sample08-02
//
//  Created by 河合 徳光 on 2015/11/01.
//  Copyright © 2015年 norimitsu kawai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    let ud = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveBtnPushed(sender: AnyObject) {
        ud.setObject(textField.text, forKey: "key01")
    }

    @IBAction func loadBtnPushed(sender: AnyObject) {
        textField.text = ud.objectForKey("key01") as? String
    }
    
}

