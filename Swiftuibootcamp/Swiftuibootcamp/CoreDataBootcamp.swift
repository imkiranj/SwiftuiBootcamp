import SwiftUI
import CoreData

class coredataviewmodel:ObservableObject {
    
    let container: NSPersistentContainer
    @Published var savedEntities:[FruitEntity] = []
   
    init(){
       container = NSPersistentContainer(name: "FruitsContainer")
        container.loadPersistentStores { (description,error) in
            if let error = error {
                print("Error Loading CoreData. \(error) ")
            } else {
                print("Successfully Loaded Core Data!")
            }
        }
        fetchfruits()
    }
     func fetchfruits() {
         let request = NSFetchRequest<FruitEntity>(entityName: "FruitEntity")
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Error Fetching. \(error)")
        }
    }
    
    func addfruits(text:String){
        let newFruits = FruitEntity(context: container.viewContext)
        newFruits.name = text
        savedata()
    }
    func deletefruit(indexset: IndexSet) {
        guard let index = indexset.first else { return }
        let entity = savedEntities[index]
        container.viewContext.delete(entity)
        savedata()
        
    }
    func savedata() {
        do {
            try container.viewContext.save()
            fetchfruits()
        } catch let error {
            print("Error Saving. \(error)")
        }
    }
}
struct CoreDataBootcamp: View {
     
    @StateObject var vm = coredataviewmodel()
    @State var textfieldText: String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Add text here...", text: $textfieldText)
                    .font(.headline)
                    .padding(.leading)
                    .frame(height: 55)
                    .background(Color.mint)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Button(action: {
                    vm.addfruits(text: textfieldText)
                    textfieldText = ""
                }, label: {
                    Text("SAVE")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(10)
                })
                .padding(.horizontal)
                
                List {
                    ForEach(vm.savedEntities) { entity in
                        Text(entity.name ?? "NO NAME")
                    }
                    .onDelete(perform: vm.deletefruit)
                }
              
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    CoreDataBootcamp()
}
