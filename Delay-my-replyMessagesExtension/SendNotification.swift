//
//  SendNotification.swift
//  Delay-my-reply
//
//  Created by Jeff Kielman on 2017-03-08.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit
import Messages
import UserNotifications


class SendNotification: NSObject {
    
    func registerForNotifications() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            if granted {
                self.setupAndGenerateLocalNotification()
            }
        }
    }
    
    func setupAndGenerateLocalNotification() {
        let sendNotificationContent = UNMutableNotificationContent()
        
        

        
        //Change wording?
        sendNotificationContent.body = "remoteParticipantIdentifier" + " " + "is waiting for a message back"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let sendNotificationRequestIdentifier = "notificationRequest"
        let sendNotificationRequest = UNNotificationRequest(identifier: sendNotificationRequestIdentifier, content: sendNotificationContent, trigger: trigger)
        UNUserNotificationCenter.current().add(sendNotificationRequest)
    }
    
}




