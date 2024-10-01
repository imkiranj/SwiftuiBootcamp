import SwiftUI
struct AnimationtimingBootcamp: View {
    @State var isanimating:Bool = false
    let timing: Double = 10
    var body: some View {
        VStack{
            Button("Button"){
                isanimating.toggle()
            }
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: isanimating ? 350 : 150, height: 100)
                .animation(.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isanimating ? 350 : 150, height: 100)
                .animation(.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: isanimating ? 350 : 150, height: 100)
                .animation(.easeInOut(duration: timing))
                    
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: isanimating ? 350 : 150, height: 100)
                .animation(.easeOut(duration: timing))
        }
    }
}

#Preview {
    AnimationtimingBootcamp()
}
