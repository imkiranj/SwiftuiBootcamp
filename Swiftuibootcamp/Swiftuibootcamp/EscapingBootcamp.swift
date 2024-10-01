import SwiftUI
class Escapingviewmodel:ObservableObject{
    @Published var text : String = "Hello"
    
    func getdata(){
        downloaddata3{ (returnedData) in
            self.text = returnedData
        }
    }
    
    func downloaddata() -> String {
        return "newData"
    }
    
//    func downloaddata2(completionHandler: (_ data: String) -> ()) {
//        
//        completionHandler("NewData")
//    }
    
    
    func downloaddata3(completionHandler: @escaping (_ data: String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 ) {
            completionHandler("NewData")
        }
       
    }
}
    
    struct EscapingBootcamp: View {
        
        @StateObject var vm = Escapingviewmodel()
        
        var body: some View {
            Text(vm.text)
                .foregroundColor(.pink)
                .font(.largeTitle)
                .fontWeight(.bold)
                .onTapGesture {
                    vm.getdata()
                }
        }
        
    }

#Preview{
        EscapingBootcamp()
    }

