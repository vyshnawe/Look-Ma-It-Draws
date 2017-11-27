//
//  ViewController.swift
//  Look Ma, It Draws
//
//  Created by Kalvakota,Vaishnavi on 11/27/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
/* https://www.youtube.com/watch?v=zvDiOcqmvaU
 */

import UIKit

class ViewController: UIViewController {
    var lastPt = CGPoint.zero
    var swiped = false
    
    func drawLines(start:CGPoint,end:CGPoint) {
        UIGraphicsBeginImageContext(self.view.frame.size)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        if let touch = touches.first {
            lastPt = touch.location(in: self.view)
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = true
        if let touch = touches.first {
            let currentPt = touch.location(in: self.view)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

