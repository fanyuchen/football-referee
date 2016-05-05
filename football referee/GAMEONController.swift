//
//  GAMEONController.swift
//  football referee
//
//  Created by 范宇辰 on 16/4/25.
//  Copyright © 2016年 范宇辰. All rights reserved.
//

import UIKit

class GAMEONController: UIViewController {
    var time : NSTimer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func star(sender: AnyObject) {
        time = NSTimer.scheduledTimerWithTimeInterval(1,target: self,selector: Selector("tickDown"),
            userInfo:nil,repeats:true)
    }

    func  tickDown()
    {
        _time-=-1
        let sec = _time%60
        let min = _time/60
        teme.text = String(min)+":"+String(sec)
        if(_tame == 0){
            if( )

        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
