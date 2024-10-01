import SwiftUI
struct OptionalBootcamp: View {
    @State var displaytext: String?  = nil
    @State var isloading: Bool = false
    @State var CurrentuserId: String? = "123"
  
    var body: some View {
        NavigationView {
            VStack{
                Text("Here we are practicing safe coding")
                if let text = displaytext {
                    Text(text)
                        .font(.title)
                }
                if isloading {
                    ProgressView()
                }
                
                Spacer()
            }
        .navigationTitle("Safe Coding")
        }
        .onAppear(){
            getdata()
        }
    }
    func getdata(){
        if let userid = CurrentuserId {
            isloading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displaytext = "this is the new data: user id is:\(userid) "
                isloading = false
            }
        } else{
               displaytext = "there is No vaild userid"
            }
          
        }
       
    }
    
#Preview {
    OptionalBootcamp()
}
