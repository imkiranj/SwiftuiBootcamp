import SwiftUI
struct paddingbootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello World")
                .font(.largeTitle)
                .fontWeight(.semibold)
                 .padding(.bottom, 20)
               
            
            Text("description for that text this is multiple line and we will align the text to the leading edge")
                .font(.title)
                .fontWeight(.light)
            
        }
        .padding()
        .padding(.vertical, 10)
        .background(.gray)
        .cornerRadius(10)
        .shadow(color: .black .opacity(0.3), radius: 10, x: 0.0, y: 10)
    }
}

#Preview {
    paddingbootcamp()
}
