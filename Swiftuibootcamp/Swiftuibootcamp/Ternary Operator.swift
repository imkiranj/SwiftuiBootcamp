import SwiftUI
struct Ternary_Operator: View {
    @State var isstarting: Bool = false
    var body: some View {
        VStack{
            Button("Button: \(isstarting.description)"){
                isstarting.toggle()
            }
            Text(isstarting ? "Starting state" :"Ending state")
            RoundedRectangle(cornerRadius: isstarting ? 25 : 0)
                .fill(isstarting ? Color.blue : Color.black)
            
                .frame(
                    width: isstarting ? 200 : 50,
                    height: isstarting ? 200 : 100
                )
            
            
            
            Spacer()
        }
    }
}
    #Preview {
        Ternary_Operator()
    }
    

