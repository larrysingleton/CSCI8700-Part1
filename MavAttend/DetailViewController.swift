//
//  DetailViewController.swift
//  MavAttend
//
//  Created by Ian Vaughn Koeppe on 10/15/16.
//  Copyright © 2016 Ian Vaughn Koeppe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                if (detail.name == "Human Computer Interaction") {
                    tableView.isHidden = true
                    label.text = "No Recorded Attendance Yet"
                } else {
                    label.text = ""
                    tableView.isHidden = false
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

