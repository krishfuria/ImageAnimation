//
//  ViewController.swift
//  Image Animations
//
//  Created by Krish Furia on 12/29/15.
//  Copyright © 2015 Krish Furia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 2
    
    var timer = NSTimer()
    
    var start = true
    
    @IBOutlet var button: UIButton!
    
    @IBOutlet var imageViewOutlet: UIImageView!

    @IBAction func updateButton(sender: AnyObject) {
        
        if start {
            timer.invalidate()
            start = false
            button.setTitle("Start Animation", forState: .Normal)
        }
        else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            start = true
            button.setTitle("Stop Animation", forState: .Normal)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doAnimation() {
        if count > 4 {
            count = 1
        }
        
        imageViewOutlet.image = UIImage(named: "frame\(count).jpg")
        
        count++
    }
/*
    
    override func viewDidLayoutSubviews() {
//        imageViewOutlet.center = CGPointMake(imageViewOutlet.center.x - 400, imageViewOutlet.center.y)
        imageViewOutlet.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) { () -> Void in
//            self.imageViewOutlet.center = CGPointMake(self.imageViewOutlet.center.x + 400, self.imageViewOutlet.center.y)
            self.imageViewOutlet.alpha = 1
            
        }
    }
*/

}

