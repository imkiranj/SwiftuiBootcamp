import SwiftUI
struct ontapgesturebootcamp: View {
    @State var changeColor: Bool = false
    var body: some View {
        VStack(spacing:40) {
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height:200)
                .foregroundColor(changeColor ? Color.red : Color.green)
            
            Button(action: {
                changeColor.toggle()
            }, label: {
                Text("Save")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
                    .padding()
                
            })
            
            Text("Tap Gesture")
                .font(.title)
                .foregroundColor(.white)
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .padding()
                .onTapGesture {
                    changeColor.toggle()
                }
            Spacer()
            
        }
        .padding(40)
    }
}

#Preview {
    ontapgesturebootcamp()
}
