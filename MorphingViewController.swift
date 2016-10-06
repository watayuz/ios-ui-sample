//
//  MorphingViewController.swift
//  ui_sample
//
//  Created by 五百蔵研究室 on 2016/10/06.
//  Copyright © 2016年 渡辺優太. All rights reserved.
//

import Foundation
import LTMorphingLabel

class MorphingViewController: UIViewController, LTMorphingLabelDelegate {
    
    @IBOutlet var morphingLabel: LTMorphingLabel!
    @IBOutlet weak var name: UILabel!
    
    private var textArray = [
        "What is design?",
        "Design", "Design is not just", "what it looks like", "and feels like.",
        "Design", "is how it works.", "- Steve Jobs",
        "Older people", "sit down and ask,", "'What is it?'",
        "but the boy asks,", "'What can I do with it?'.", "- Steve Jobs",
        "", "Swift", "Objective-C", "iPhone", "iPad", "Mac Mini",
        "MacBook Pro🔥", "Mac Pro⚡️",
        "爱老婆",
        "老婆和女儿"
    ]
    
    var pressCount = 0
    
    override func viewDidAppear(_ animated: Bool) {
        self.morphingLabel.morphingEffect = .evaporate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        morphingLabel.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func pressed(_ sender: AnyObject) {
        pressCount += 1
        print(pressCount)
        
        switch pressCount {
        case 1:
            self.name.text = "evaporate"
            self.morphingLabel.morphingEffect = .evaporate
        case 2:
            self.name.text = "fall"
            self.morphingLabel.morphingEffect = .fall
        case 3:
            self.name.text = "pixelate"
            self.morphingLabel.morphingEffect = .pixelate
        case 4:
            self.name.text = "sparkle"
            self.morphingLabel.morphingEffect = .sparkle
        case 5:
            self.name.text = "burn"
            self.morphingLabel.morphingEffect = .burn
        case 6:
            self.name.text = "anvil"
            self.morphingLabel.morphingEffect = .anvil
        default:
            self.name.text = "scale"
            print("scale")
        }
        self.morphingLabel.text = self.textArray[pressCount]
        if pressCount == 7 {
            pressCount = 0
        }
    }
    
}


extension MorphingViewController {
    func morphingDidStart(_ label: LTMorphingLabel) {
        print("morphing did start")
    }
    
    func morphingDidComplete(_ label: LTMorphingLabel) {
        print("morphing did complete")
    }
    
    func morphingOnProgress(_ label: LTMorphingLabel, progress: Float) {
        print("morphing on progress")
    }
}
