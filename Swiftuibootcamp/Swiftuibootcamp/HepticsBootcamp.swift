import SwiftUI
class HapticsManger{
    static let instance = HapticsManger() // singleton
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    func impact(style:UIImpactFeedbackGenerator.FeedbackStyle){
        let generator = UIImpactFeedbackGenerator(style:style)
        generator.impactOccurred()
    }
    
}

struct HepticsBootcamp: View {
    var body: some View {
        VStack(spacing:20){
            Button("Success") {HapticsManger.instance.notification(type: .success)}
            Button("Warning") {HapticsManger.instance.notification(type: .warning)}
            Button("Error") {HapticsManger.instance.notification(type: .error)}
              
            Divider()
            
            Button("soft"){HapticsManger.instance.impact(style: .soft)}
            Button("light"){HapticsManger.instance.impact(style: .light)}
            Button("medium"){HapticsManger.instance.impact(style: .medium)}
            Button("rigid"){HapticsManger.instance.impact(style: .rigid)}
        }
    }
}

#Preview {
    HepticsBootcamp()
}
