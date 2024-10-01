import SwiftUI
struct SheetsBootcamp: View {

    @State var showsheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showsheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.blue)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white .cornerRadius(10))
                    
                
            })
            .sheet(isPresented: $showsheet,content:{
                secondscreen()
            })
            
        }
        
    }
}

struct secondscreen : View {
    @Environment(\.presentationMode) var presentationmode
    var body : some View {
        ZStack(alignment: .topLeading){
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationmode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                
            })
        }
    }
}
#Preview {
    SheetsBootcamp()
//    secondscreen()
}
    

