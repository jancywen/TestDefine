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
        
        viw.backgroundColor = HuConfigration.uiColor(fromString: "green")
        viw.backgroundColor = UIColor.uiColor(fromString: "red")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

