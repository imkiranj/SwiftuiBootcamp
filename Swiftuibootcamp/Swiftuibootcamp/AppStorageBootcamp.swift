import SwiftUI
struct AppStorageBootcamp: View {
    @AppStorage("name") var currentusername:String?
    
    var body: some View {
        VStack(spacing:20){
            Text(currentusername ?? "Add name here")
            if let name = currentusername{
                Text(name)
            }
            Button("save".uppercased()) {
                let name:String = "Kiran"
                currentusername = name
            }
        }
      
    }
}

#Preview {
    AppStorageBootcamp()
}
