import SwiftUI
struct AlertBootcamp: View {
    @State var showalert:Bool = false
    var body: some View {
        Button("Click Here") {
            showalert.toggle()
        }
        .alert(isPresented: $showalert , content: {
            Alert(title: Text("This is The Title"), message: Text("Here is the Description"), primaryButton: .destructive(Text("Delete")), secondaryButton: .cancel())
//            Alert(title: Text("Their is an error"))
        })

    }
}

#Preview {
    AlertBootcamp()
}
