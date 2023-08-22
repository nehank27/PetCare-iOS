//
//  Notifications.swift
//  PetCare.NK
//
//  Created by Nehan K on 6/2/23.
//

import SwiftUI
import UserNotifications

class NotificationManager {
    
    static let instance = NotificationManager() // singleton
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options:options) { (success, error) in
            if let error = error {
                print("ERRROR: \(error)")
            } else {
                print("SUCCESS")
            }

        }
    }
    
    func scheduleNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = "Cat Reminder"
        content.subtitle = "Feed your CAT"
        content.sound = .default
        content.badge = 1
        
        var dateComponents = DateComponents()
        dateComponents.hour = 20
        dateComponents.minute = 20
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let request = UNNotificationRequest(identifier: UUID().uuidString
                                            , content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
}

struct Notifications: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Request Permission") {
                NotificationManager.instance.requestAuthorization()
            }
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
