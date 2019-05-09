//
//  UpViewController.swift
//  PassDataUsingClosure
//
//  Created by Hoang Anh on 5/9/19.
//  Copyright © 2019 Hoàng Anh. All rights reserved.
//

import UIKit

class UpViewController: UIViewController {

    @IBOutlet weak var upLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func fillText(text: String?) {
        upLabel.text = text
    }

}
