import SwiftUI
struct AnimationBootcamp: View {
    @State var isanimated : Bool = false
    var body: some View {
        VStack {
            Button("Button"){
                isanimated.toggle()
            }
            
        }
        Spacer()
        RoundedRectangle(cornerRadius: isanimated ? 50 : 0)
            .fill(isanimated ? Color.red : Color.green)
            .frame(
                width: isanimated ? 100: 300,
                height: isanimated ? 100: 300)
            .rotationEffect(Angle(degrees: isanimated ? 360 :0))
            .offset(y:isanimated ? 300 : 0 )
            .animation(Animation
                .default
                .repeatCount(5, autoreverses: true))
        
        Spacer()
    }
        }
    

    #Preview {
        AnimationBootcamp()
    }

