//
//  UnderViewController.swift
//  PassDataClosure2
//
//  Created by Hoang Anh on 5/9/19.
//  Copyright © 2019 Hoàng Anh. All rights reserved.
//

import UIKit

class UnderViewController: UIViewController {
    
    
    
    @IBOutlet weak var underTextField: UITextField!
    
    var fillText: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func passButton(_ sender: Any) {
        fillText?(underTextField.text)
    }
    
}
