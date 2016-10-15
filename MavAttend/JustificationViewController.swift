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
        
        let justification = UITextField(frame: CGRect(x: 5, y: 105, width: self.view.bounds.width - 10, height: self.view.bounds.height - 540))
        justification.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        justification.contentVerticalAlignment = UIControlContentVerticalAlignment.top;
        self.view.addSubview(justification)
        
        let button = UIButton(type: UIButtonType.system)
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        button.frame = CGRect(x: 5, y: 665, width: self.view.bounds.width - 10, height: 60)
        button.backgroundColor = UIColor(red: 0, green: 255, blue: 0, alpha: 1.0)
        button.setTitleColor(UIColor(red: 255, green: 255, blue: 255, alpha: 1.0), for: .normal)
        button.setTitle("Submit", for: .normal)
        self.view.addSubview(button)
    }
    
    func pressed(sender: UIButton) {
        let alert = UIAlertController(title: "Submitted!", message: "Your professor will review your dispute.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action: UIAlertAction!) in}))
        
        self.navigationController!.popViewController(animated: true)
        self.navigationController!.present(alert, animated: true, completion: nil)
    }
    
}
