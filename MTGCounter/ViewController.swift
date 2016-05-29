//
//  ViewController.swift
//  MTGCounter
//
//  Created by Renan Greca on 5/29/16.
//  Copyright © 2016 renangreca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOne: ContentView!
    @IBOutlet weak var playerTwo: ContentView!
    @IBOutlet weak var playerThree: ContentView!
    @IBOutlet weak var playerFour: ContentView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup(playerOne)
        playerOne.playerView.name.placeholder = "Player 1"
        setup(playerTwo)
        playerTwo.playerView.name.placeholder = "Player 2"
        setup(playerThree)
        playerThree.playerView.name.placeholder = "Player 3"
        setup(playerFour)
        playerFour.playerView.name.placeholder = "Player 4"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setup(view: ContentView) {
        view.playerView = NSBundle.mainBundle().loadNibNamed("PlayerView",owner:self,options:nil).first as! PlayerView
        view.addSubview(view.playerView)
        view.playerView.frame = view.bounds
        view.playerView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        view.playerView.setup()        
        // configure the initial layout of your subviews here.
    }

    
}

