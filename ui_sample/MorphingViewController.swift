//
//  MorphingViewController.swift
//  ui_sample
//
//  Copyright © 2016年 渡辺優太. All rights reserved.
//

import Foundation
import LTMorphingLabel

class MorphingViewController: UIViewController, LTMorphingLabelDelegate {
    
    
    @IBOutlet weak var segment: UISegmentedControl!
    
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
        "老婆和女儿",
        
        
    ]
    
    var pressCount = 0
    
    override func viewDidAppear(_ animated: Bool) {
//        self.morphingLabel.morphingEffect = .evaporate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        morphingLabel.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func pressed(_ sender: AnyObject) {
        
        let segmentIndex = segment.selectedSegmentIndex
        pressCount += 1
        switch segmentIndex {
        case 0:
            self.name.text = "scale"
            self.morphingLabel.morphingEffect = .scale
        case 1:
            self.name.text = "Evaporate"
            self.morphingLabel.morphingEffect = .evaporate
        case 2:
            self.name.text = "Fall"
            self.morphingLabel.morphingEffect = .fall
        case 3:
            self.name.text = "Pixelate"
            self.morphingLabel.morphingEffect = .pixelate
        case 4:
            self.name.text = "Sparkle"
            self.morphingLabel.morphingEffect = .sparkle
        case 5:
            self.name.text = "Burn"
            self.morphingLabel.morphingEffect = .burn
        case 6:
            self.name.text = "Anvil"
            self.morphingLabel.morphingEffect = .anvil
        default:
            self.name.text = "Select segment"
            break
            
        }
        
        // Label textが更新されたタイミングでanimationする
        self.morphingLabel.text = self.textArray[pressCount]
        
        if pressCount == self.textArray.count - 1 {
            pressCount = 0
        }
    }
    
}


extension MorphingViewController {
    func morphingDidStart(_ label: LTMorphingLabel) {
    }
    
    func morphingDidComplete(_ label: LTMorphingLabel) {
    }
    
    func morphingOnProgress(_ label: LTMorphingLabel, progress: Float) {
    }
}
