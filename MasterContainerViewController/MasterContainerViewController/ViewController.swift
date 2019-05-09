//
//  ViewController.swift
//  MasterContainerViewController
//
//  Created by Hoang Anh on 5/9/19.
//  Copyright © 2019 Hoàng Anh. All rights reserved.
//

import UIKit

enum SegueIdentifer: String {
    case upSegue = "upSegue"
    case underSegue = "underSegue"
}

class ContainerViewController: UIViewController {
    
    var upVC: UpViewController?
    var underVC: UnderViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        underVC?.delegate = upVC
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case SegueIdentifer.upSegue.rawValue:
            upVC = segue.destination as? UpViewController
            
        case SegueIdentifer.underSegue.rawValue:
            underVC = segue.destination as? UnderViewController
        default:
            return
        }
    }
    
}
