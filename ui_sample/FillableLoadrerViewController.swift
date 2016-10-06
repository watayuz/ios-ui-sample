//
//  FillableLoadrerViewController.swift
//  ui_sample
//
//  Created by 五百蔵研究室 on 2016/10/06.
//  Copyright © 2016年 渡辺優太. All rights reserved.
//

import Foundation
import UIKit
import FillableLoaders

class FillableLoadrerViewController: UIViewController {
    
    private var loader = FillableLoader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loader.removeLoader()
        loader = WavesLoader.showLoader(with: path())
    }
    
    func path() -> CGPath {
        // イラストをベジエ曲線にするやつあれば楽そう
        return Paths.twitterPath()
    }
    
}
