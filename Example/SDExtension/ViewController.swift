//
//  ViewController.swift
//  SDExtension
//
//  Created by chenkefeng_java@163.com on 04/25/2018.
//  Copyright (c) 2018 chenkefeng_java@163.com. All rights reserved.
//

import UIKit
import SDExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(UIApplication.cacheDir.value, UIApplication.documentDir.value)
        print(#function)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIApplication.shared.switchRootVc(BViewController())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

