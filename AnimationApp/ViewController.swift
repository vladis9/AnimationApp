//
//  ViewController.swift
//  AnimationApp
//
//  Created by Vlad Zinevich on 19.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var coreAnimationButton: UIButton!
    
    private var originCoordinate: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
    }

    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat], animations: {
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 40
            } else {
                self.coreAnimationView.frame.origin.x += 40
            }
        })
    }
    
}

