//
//  File.swift
//  MasterContainerViewController
//
//  Created by Hoang Anh on 5/9/19.
//  Copyright © 2019 Hoàng Anh. All rights reserved.
//

import UIKit

class UnderViewController: UIViewController {
    
    @IBOutlet weak var underTextField: UITextField!
    
    var delegate: FillText?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func passButton(_ sender: Any) {
        delegate?.upLabel.text = underTextField.text
    }
}
