//
//  REDViewController.swift
//  football refe
//  Created by 范宇辰 on 16/5/19.
//  Copyright © 2016年 范宇辰. All rights reserved.
//

import UIKit

class REDViewController: UIViewController {
    var db:SQLiteDB!
    override func viewDidLoad() {
        super.viewDidLoad()
        db = SQLiteDB.sharedInstance()
        let SQL_CREATE_RED = "creat table if not exists t_time(uid integer primary key,TEAM varchar(20),TEAM_ID integer)"
        db.execute(SQL_CREATE_RED)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
