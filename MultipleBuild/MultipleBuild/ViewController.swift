//
//  ViewController.swift
//  MultipleBuild
//
//  Created by Akshuma Trivedi on 29/08/20.
//  Copyright © 2020 Akshuma Trivedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(Environment.accessCode)
        print(Environment.baseKey)
        print(Environment.serverEndpoint)
        print(Environment.endPoint)
        print(Environment.subscriptonKeys)
        print(Environment.merchantId)
        
    }


}

