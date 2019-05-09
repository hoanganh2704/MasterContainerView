//
//  ViewController.swift
//  PassDataClosure2
//
//  Created by Hoang Anh on 5/9/19.
//  Copyright © 2019 Hoàng Anh. All rights reserved.
//

import UIKit

enum SegueIdentifier: String {
    case underSegue = "underSegue"
}

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var containerLabel: UILabel!
    
    var underVC: UnderViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case SegueIdentifier.underSegue.rawValue:
            underVC = segue.destination as? UnderViewController
            // de tranh duoc retain cycle
            underVC?.fillText = { [unowned self] text in
                self.containerLabel.text = text
            }
        default:
            return
        }
    }
    
}

