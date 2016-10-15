//
//  JustificationViewController.swift
//  MavAttend
//
//  Created by Ian Vaughn Koeppe on 10/15/16.
//  Copyright © 2016 Ian Vaughn Koeppe. All rights reserved.
//

import UIKit

class JustificationViewController: UIViewController {

    public var date: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = date
        
        let label = UILabel(frame: CGRect(x: 5, y: 80, width: self.view.bounds.width - 10, height: 20))
        label.text = "Reason for being tardy/absent:"
        self.view.addSubview(label)
        
        let justification = UITextField(frame: CGRect(x: 5, y: 105, width: self.view.bounds.width - 10, height: self.view.bounds.height - 140))
        justification.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        justification.contentVerticalAlignment = UIControlContentVerticalAlignment.top;
        self.view.addSubview(justification)
        
        let button = UIButton(type: UIButtonType.roundedRect)
        button.frame = CGRect(x: 5, y: self.view.bounds.height - 30, width: self.view.bounds.width - 10, height: 25)
        button.titleLabel!.text = "Submit"
        self.view.addSubview(button)
    }
    
}
