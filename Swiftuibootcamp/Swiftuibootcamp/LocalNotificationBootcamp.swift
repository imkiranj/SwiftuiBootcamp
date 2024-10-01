import SwiftUI
import UserNotifications

class NotificationManager{
    static let instance = NotificationManager() // singleton
    
    func requestAuthorization() {
        let options:UNAuthorizationOptions = [.alert, .badge,.sound]
        UNUserNotificationCenter.current().requestAuthorization(options:options) {(success,error) in
            if let error = error{
                print("ERROR:\(error)")
            } else {
               print("SUCCESS")
            }
            
        }
    }
    func schedulenotification(){
        let content = UNMutableNotificationContent()
        content.title = "this is My First Notification"
        content.subtitle = "This Is so easy"
        content.sound = .default
        content.badge = 1
        
        // time
       // let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        
//         calender
        var dateComponents = DateComponents()
          dateComponents.hour = 18
          dateComponents.minute = 15
         dateComponents.weekday = 2
        
        // location
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
    
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger)
            UNUserNotificationCenter.current().add(request)
    }
}

struct LocalNotificationBootcamp: View {
    var body: some View {
        VStack(spacing:40){
            Button("Request Permission"){
                NotificationManager.instance.requestAuthorization()
            }
            Button("Schedule Notification"){
                NotificationManager.instance.schedulenotification()
            }
        }
     
        
    }
}

#Preview {
    LocalNotificationBootcamp()
}
