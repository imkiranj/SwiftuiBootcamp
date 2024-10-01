import SwiftUI
struct ToggleBootcamp: View {
    @State var toggleison: Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("Status")
                Text( toggleison ? "Online" : "Offline")
            }
               Toggle(
                    isOn: $toggleison,
                    label: {
                        Text("Change Status")
                    })
                .toggleStyle(SwitchToggleStyle(tint: Color.blue))
            
        }
        .padding(.horizontal,50)
        Spacer()
    }
}

#Preview {
    ToggleBootcamp()
}
