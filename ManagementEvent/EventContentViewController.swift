//
//  EventContentViewController.swift
//  ManagementEvent
//
//  Created by Kiet Nguyen on 4/29/17.
//  Copyright © 2017 Group9_iOSUTE. All rights reserved.
//

import UIKit

class EventContentViewController: UIViewController {

    var dateEvent: String?
    var event: Event?
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var contentText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        dateLabel.text = dateEvent
        contentText.text = event?.content
       
    }

  }
