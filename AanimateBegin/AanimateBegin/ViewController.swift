//
//  ViewController.swift
//  AanimateBegin
//
//  Created by 我爱你 on 2017/7/3.
//  Copyright © 2017年 我爱你. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var logBtn: UIButton?
    var logBtn1: UIButton?
    var logBtn2: UIButton?
    var logBtn3: UIButton?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logBtn = UIButton(frame: CGRect(x: -394, y: 200, width: self.view.bounds.width-20*2, height: 50))
        logBtn?.backgroundColor = UIColor.purple
        logBtn?.setTitle("登录试试", for: UIControlState.normal)
        self.view.addSubview(logBtn!)
        
        logBtn1 = UIButton(type: UIButtonType.custom)
        logBtn1?.frame = CGRect(x: -414, y: 300, width: self.view.bounds.width - 20*2, height: 50)
        logBtn1?.setTitle("登录第二个", for: UIControlState.normal)
        logBtn1?.backgroundColor = UIColor.cyan
        logBtn1?.addTarget(self, action: #selector(ViewController.logBtn1Action(btn:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(logBtn1!)
        
        logBtn2 = UIButton(type: UIButtonType.custom)
        logBtn2?.frame = CGRect(x: 20, y: 400, width: self.view.bounds.width - 20*2, height: 50)
        logBtn2?.setTitle("压缩变化", for: UIControlState.normal)
        logBtn2?.backgroundColor = UIColor.brown
        self.view.addSubview(self.logBtn2!)
        
        logBtn3 = UIButton(type: UIButtonType.custom)
        logBtn3?.frame = CGRect(x: 20, y: 20, width: 335, height: 50)
        logBtn3?.setTitle("登录的变换", for: UIControlState.normal)
        logBtn3?.backgroundColor = UIColor.red
        self.view.addSubview(self.logBtn3!)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.logbtnAnimate()
        
        self.logBtn1Animate()
        
        self.logBtn2Animate()
        
        self.affinAnimate()
    }
    
    func logBtn1Action(btn: UIButton) -> Void {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDelegate(self)
        UIView.setAnimationsEnabled(true)
        UIView.setAnimationDuration(0.5)
        UIView.setAnimationCurve(UIViewAnimationCurve.easeInOut)
        
        self.logBtn1?.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
        self.logBtn1?.frame = CGRect(x: 375, y: 0, width: self.logBtn1!.frame.width*0.1, height: self.logBtn1!.frame.height*0.1)
        self.logBtn1?.alpha = 0
        
        UIView.commitAnimations()
    }
    
    func logbtnAnimate() -> Void {
        //        UIView.animate(withDuration: 3.0, animations: {
        //           [unowned self] () in
        //            self.logBtn?.frame = CGRect(x: 20, y: 200, width: (self.view.bounds.width) - 20*2, height: 50)
        //        }) { (finish) in
        //
        //        }
        
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(3.0)
        
        logBtn?.frame = CGRect(x: 20, y: 200, width: (self.view.bounds.width) - 20*2, height: 50)
        
        UIView.commitAnimations()
    }
    
    func logBtn1Animate() -> Void {
        
        UIView.animate(withDuration: 3.0, animations: { 
          [unowned self] in self.logBtn1?.center = CGPoint(x: 207, y: 325)
        }, completion: nil)
        
        
    }
    
    func logBtn2Animate() -> Void {
//        UIView.animate(withDuration: 3.0, animations: { 
//            [unowned self] in
//            self.logBtn2?.bounds = CGRect(x: 0, y: 0, width: (self.logBtn2?.frame.width)!*0.7, height: self.logBtn2!.frame.height*1.5)
//        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, animations: { 
            [unowned self] in
            self.logBtn2?.frame = CGRect(x: 0, y: 400, width: self.logBtn2!.frame.width*0.7, height: self.logBtn2!.frame.height * 1.2)
            self.logBtn2?.backgroundColor = UIColor.blue
        }, completion: nil)
        
    }
    
    func affinAnimate() -> Void {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(3.0)
        UIView.setAnimationCurve(UIViewAnimationCurve.easeInOut)
        UIView.setAnimationDelay(1.0)
        UIView.setAnimationDelegate(self)
        UIView.setAnimationsEnabled(true)
        UIView.setAnimationRepeatCount(2)
        UIView.setAnimationRepeatAutoreverses(true)
        
//        self.logBtn3?.transform = CGAffineTransform(translationX: 0, y: 300)
//        self.logBtn3?.transform = CGAffineTransform(scaleX: 0.5, y: 1.2)
        self.logBtn3?.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_4))
        
        UIView.commitAnimations()
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

