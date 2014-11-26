//
//  ViewController.swift
//  PostCard
//
//  Created by Christian Rivera on 11/25/14.
//  Copyright (c) 2014 MySelf.Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTxtFiled: UITextField!
    @IBOutlet weak var messageTxtField: UITextField!
    @IBOutlet weak var sendMailBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        // Actions to send mail btn
    @IBAction func sendMailBtn(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = messageTxtField.text
        messageLabel.textColor = UIColor.redColor()
        messageTxtField.text = ""
        messageTxtField.resignFirstResponder()
        sendMailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

