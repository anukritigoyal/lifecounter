//
//  HistoryController.swift
//  lifecounter
//
//  Created by Anukriti Goyal on 3/2/19.
//  Copyright © 2019 Anukriti Goyal. All rights reserved.
//

import UIKit

class HistoryController: UIViewController {
    
    @IBOutlet weak var history: UITextView!
    
    var histText: String = "No previous winners!"

    override func viewDidLoad() {
        super.viewDidLoad()
        history.text = histText
    }
}
