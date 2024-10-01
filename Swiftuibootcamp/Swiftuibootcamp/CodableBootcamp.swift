import SwiftUI
struct CustomerModel: Identifiable {
    let id: String
    let name: String
    let points:Int
    let ispremium:Bool
}

class customerViewModel: ObservableObject {
    
    @Published var customer:CustomerModel? = CustomerModel(id: "1", name: "Kiran", points: 10, ispremium: false)
}

struct CodableBootcamp: View {
    
    @StateObject var vm = customerViewModel()
    
    var body: some View {
        VStack(spacing:20){
            if let customer = vm.customer {
                Text(customer.id)
                Text(customer.name)
                Text("\(customer.points)")
                Text(customer.ispremium.description)
            }
                
        }
      
    }
}

#Preview {
    CodableBootcamp()
}
