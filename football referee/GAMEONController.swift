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
    var _tame:Int = 5400
    var pointA:Int = 0 , pointB:Int = 0

    @IBOutlet weak var pointLabA: UILabel!
    @IBOutlet weak var pointLabB: UILabel!
    @IBOutlet weak var timel: UILabel!
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
        _tame -= 1
        let sec = _tame%60
        let min = _tame/60
        timel.text = String(min)+":"+String(sec)
        if(_tame == 0){
            time.invalidate()

        }
        
    }
    
    @IBAction func gold(sender: AnyObject) {
        pointA += 1
        pointLabA.text = String(pointA)
    }
    
    @IBAction func goldB(sender: AnyObject) {
        pointB += 1
        pointLabB.text = String(pointB)
    }

    @IBOutlet weak var tAimg: UIImageView!
    UIImage *image2 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"image.png" ofType:nil]];
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
