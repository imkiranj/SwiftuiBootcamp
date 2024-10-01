import SwiftUI
struct usermodel:Identifiable{
    let id = UUID().uuidString
    let name:String
    let points:Int
    let isverified:Bool
}

class ArrayModificationViewModel:ObservableObject{
    
    @Published var dataArray : [usermodel] = []
    @Published var filteredArray : [usermodel] = []
    
    init(){
        getuser()
        updateFilteredArray()
    }
    
    func updateFilteredArray(){
//  
//       filteredArray = dataArray.sorted{(user1 , user2) -> Bool in
//                    return user1.points > user2.points
//        }
//    filteredArray = dataArray.sorted(by: {$0.points > $1.points})
//        }
    
   
        
//        filteredArray = dataArray.filter({ (user) -> Bool in
//            return user.points > 17
//       })
         
        
       
       
        
    }
    func getuser(){
        let user1 = usermodel(name: "Tony", points: 10, isverified: true)
        let user2 = usermodel(name: "Chris", points: 15, isverified: false)
        let user3 = usermodel(name: "Robert", points: 20, isverified: true)
        let user4 = usermodel(name: "Thor", points: 25, isverified: true)
        let user5 = usermodel(name: "Stark", points: 30, isverified: false)
        let user6 = usermodel(name: "Hulk", points: 35, isverified: false)
        let user7 = usermodel(name: "Captain", points: 40, isverified: true)
        self.dataArray.append(contentsOf: [
            user1,
            user2,
            user3,
            user4,
            user5,
            user6,
            user7
        
        ])
    }
}
struct ArrayBootcamp: View {
    
    @StateObject var Vm = ArrayModificationViewModel()
    
    var body: some View {
       ScrollView{
           VStack(spacing:20){
                ForEach(Vm.filteredArray) {user in
                    VStack(alignment:.leading){
                        Text(user.name)
                            .font(.headline)
                        HStack{
                            Text("points:\(user.points)")
                            Spacer()
                            if user.isverified{
                                Image(systemName: "flame.fill")
                                
                            }
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(20)
                    .padding(.horizontal)
                
                  
                }
            }
        }
    }
}

#Preview {
    ArrayBootcamp()
}
