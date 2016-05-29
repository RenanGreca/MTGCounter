//
//  PlayerView.swift
//  MTGCounter
//
//  Created by Renan Greca on 5/29/16.
//  Copyright © 2016 renangreca. All rights reserved.
//

import UIKit

class PlayerView: UIView {
    
    var view = UIView()
    var infect = 0
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var score: UIPickerView!
    @IBOutlet weak var btnPlus1: UIButton!
    @IBOutlet weak var btnPlus5: UIButton!
    @IBOutlet weak var btnMinus1: UIButton!
    @IBOutlet weak var btnMinus5: UIButton!
    @IBOutlet weak var lblInfect: UILabel!
    
    let lifeCounter = LifePicker()
    
    func setup() {
        self.score.dataSource = lifeCounter
        self.score.delegate = lifeCounter
        self.lifeCounter.picker = self.score
        self.score.selectRow(20, inComponent: 0, animated: false)
        
        self.btnPlus1.addTarget(lifeCounter, action: "plusOne", forControlEvents: .TouchUpInside)
        self.btnPlus5.addTarget(lifeCounter, action: "plusFive", forControlEvents: .TouchUpInside)
        self.btnMinus1.addTarget(lifeCounter, action: "minusOne", forControlEvents: .TouchUpInside)
        self.btnMinus5.addTarget(lifeCounter, action: "minusFive", forControlEvents: .TouchUpInside)
    }
    
//    func setup() -> UIView {
//        // setup the view from .xib
//        let bundle = NSBundle(forClass: self.dynamicType)
//        let nib = UINib(nibName: "PlayerView", bundle: bundle)
//        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
//        view.frame = self.bounds
//        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
//        return view
//    }

    @IBAction func infectPlusOne(sender: AnyObject) {
        infect += 1
        lblInfect.text = "\(infect)"
    }
    
    @IBAction func infectReset(sender: AnyObject) {
        infect = 0
        lblInfect.text = "\(infect)"
    }

}
