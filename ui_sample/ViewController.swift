//
//  ViewController.swift
//  ui_sample
//
//  Created by 渡辺優太 on 2016/10/06.
//  Copyright © 2016年 渡辺優太. All rights reserved.
//

import UIKit
import FillableLoaders

class ViewController: UIViewController {
    
    //FillableLoader
    var loader = FillableLoader()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loader.removeLoader(false)
        loader = PlainLoader.showLoader(with: path())
        
    }
    
    func path() -> CGPath {
        return Paths.twitterPath()
    }


}

