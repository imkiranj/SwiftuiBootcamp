import SwiftUI
struct ForEachBootcamp: View {
    var body: some View {
       VStack{
         ForEach(0..<10) { index in
               HStack{
                   Circle()
                       .frame(width: 30,height: 30)   
                   Text("index is \(index)")
                }
         
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
