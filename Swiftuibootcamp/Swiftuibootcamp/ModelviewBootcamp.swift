import SwiftUI
struct UserModel:Identifiable {
    let id: String = UUID().uuidString
    let displayname: String
    let username: String
    let Count: Int
    let isverified : Bool
}
struct ModelviewBootcamp: View {
    @State var Names: [UserModel] = [
        UserModel(displayname: "Nick", username:"Nick123", Count: 100, isverified: true),
        UserModel(displayname: "John", username:"John6674", Count:110, isverified: true),
        UserModel(displayname: "Roy", username:"Roy3444", Count: 120, isverified: false),
        UserModel(displayname: "Lily", username:"Lily121", Count: 100, isverified: true)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(Names) {user in
                    HStack(spacing:15){
                        Circle()
                            .frame(width: 35 , height: 35)
                        VStack{
                            Text(user.displayname)
                                .font(.title)
                            Text("@\(user.username)")
                                .foregroundColor(.gray )
                                .font(.callout)
                        }
                        Spacer()
                        if user.isverified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                       VStack{
                            Text("\(user.Count)")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding(.vertical,10)
                }
                
            }
            .navigationTitle("Names")
        }
    }
}

#Preview {
    ModelviewBootcamp()
}
