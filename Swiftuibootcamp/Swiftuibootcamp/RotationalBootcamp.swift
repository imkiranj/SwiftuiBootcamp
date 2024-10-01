import SwiftUI
struct RotationalBootcamp: View {
    @State var angle:Angle = Angle(degrees: 0)
    var body: some View {
        Text("Hello, World!")
            .font(.title)
            .padding(50)
            .background(Color.blue)
            .cornerRadius(10 )
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged{value in
                        angle = value
                    }
                    .onEnded{ value in
                        withAnimation(.spring()){
                            angle = Angle(degrees: 0)
                        }
                    }
                )
        
    }
}

#Preview {
    RotationalBootcamp()
}
