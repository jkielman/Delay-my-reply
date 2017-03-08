//
//  AppDelegate.swift
//
//  Created by Jeff Kielman on 2017-03-04.
//  Copyright © 2017 Jeff Kielman. All rights reserved.
//

import UIKit
import  UserNotifications


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        return true
    }
    
    
}

