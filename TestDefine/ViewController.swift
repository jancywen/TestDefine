//
//  ViewController.swift
//  TestDefine
//
//  Created by wangwenjie on 2017/3/16.
//  Copyright © 2017年 Roo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viw: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viw.backgroundColor = TestHeader.uiColorFromString("green")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

