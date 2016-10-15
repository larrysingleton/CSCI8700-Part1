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
        
        let justification = UITextField(frame: CGRect(x: 5, y: 5, width: self.view.bounds.width - 10, height: self.view.bounds.height - 10))
        self.view.addSubview(justification)
    }
    
}
