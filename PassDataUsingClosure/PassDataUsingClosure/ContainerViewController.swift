//
//  ViewController.swift
//  PassDataUsingClosure
//
//  Created by Hoang Anh on 5/9/19.
//  Copyright © 2019 Hoàng Anh. All rights reserved.
//

import UIKit

enum SegueIdentifier: String {
    case upSegue = "upSegue"
    case underSegue = "underSegue"
}

class ContainerViewController: UIViewController {

    var upVC: UpViewController?
    
    var underVC: UnderViewController?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        underVC?.fillText = upVC?.fillText
        // Do any additional setup after loading the view.
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case SegueIdentifier.upSegue.rawValue:
            upVC = segue.destination as? UpViewController
        case SegueIdentifier.underSegue.rawValue:
            underVC = segue.destination as? UnderViewController
        default:
            return
        }
    }
}

