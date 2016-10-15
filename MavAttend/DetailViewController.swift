//
//  DetailViewController.swift
//  MavAttend
//
//  Created by Ian Vaughn Koeppe on 10/15/16.
//  Copyright © 2016 Ian Vaughn Koeppe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var fakeDays = ["Mon, Aug 21", "Wed, Aug 23", "Mon, Sep 1", "Wed, Sep 3"]
    var fakeStatuses = ["Present", "Tardy", "Present", "Absent"]

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
                    tableView.dataSource = self
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fakeDays[indexPath.row]
        
        let label = UILabel(frame: CGRect(x:20, y:14, width:200, height:50))
        label.font = label.font.withSize(12)
        label.text = fakeStatuses[indexPath.row]
        cell.addSubview(label)
        
        if (fakeStatuses[indexPath.row] != "Present") {
            cell.accessoryType = UITableViewCellAccessoryType.detailDisclosureButton
        }
        
        return cell
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

