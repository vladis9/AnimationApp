//
//  ViewController.swift
//  AnimationApp
//
//  Created by Vlad Zinevich on 19.07.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var coreAnimationButton: UIButton!
    @IBOutlet var springAnimationButton: SpringButton!
    
    
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
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        
    }
    
}

