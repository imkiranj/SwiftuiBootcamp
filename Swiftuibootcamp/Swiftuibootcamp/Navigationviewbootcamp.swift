import SwiftUI
struct Navigationviewbootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello World", destination: Secondscreen())
                
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            .navigationTitle("All Inboxes")
          
            
        }
    }
}

struct Secondscreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here", destination: Text("third Screen"))
                
            }
          
           
        }
    }
}
#Preview {
    Navigationviewbootcamp()
}
