//
//  ViewController.swift
//  Post Card
//
//  Created by Imon dela Rosa on 09/08/2015.
//  Copyright © 2015 Imon dela Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor()
        
    
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        
        enterNameTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder()

        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }
}
