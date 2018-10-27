//
//  ViewController.swift
//  FirebaseSandbox
//
//  Created by AkiraYagi on 2018/10/27.
//  Copyright © 2018年 AkiraYagi. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: authOptions) { (_, _) in
            print("push permission finished.")
        }
    }


}

