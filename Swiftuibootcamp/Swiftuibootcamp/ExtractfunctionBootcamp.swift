import SwiftUI
struct ExtractfunctionBootcamp: View {
    @State var backgroundcolor : Color = Color.yellow
    var body: some View {
        ZStack {
            backgroundcolor
                .edgesIgnoringSafeArea(.all)
            
              NewView()
        }
    }
}

#Preview {
    ExtractfunctionBootcamp()
}

struct NewView: View {
    @State var backgroundcolor : Color = Color.yellow
    var body: some View {
        VStack{
            Text("Title")
                .font(.title)
            Button(action: {
                backgroundcolor = .pink
            }, label: {
                Text("Click me")
                    .foregroundColor(.yellow)
                    .font(.headline)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
}
