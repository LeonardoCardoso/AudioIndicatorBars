//
//  ViewController.swift
//  AudioIndicatorBarsExample
//
//  Created by Leonardo Cardoso on 16/09/2016.
//  Copyright © 2016 leocardz.com. All rights reserved.
//

import UIKit
import AudioIndicatorBars

class ViewController: UIViewController {

    @IBOutlet var audioIndicatorBarsView: AudioIndicatorBarsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func start(_ sender: UIButton) {
        
        self.audioIndicatorBarsView.start();
    
    }

    
    @IBAction func stop(_ sender: UIButton) {
        
        self.audioIndicatorBarsView.stop();
        
    }
    
}

