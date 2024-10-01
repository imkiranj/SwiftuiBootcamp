import SwiftUI
struct ListBootcamp: View {
    @State var fruits:[String] = ["Apple", "Banana","Peach","Orange"]
    
    @State var Veggies:[String] = ["Methi","Shep"]
    
    var body: some View {
        NavigationView{
            List {
                Section(
                    header:
                        HStack{
                            Text("fruit")
                                .font(.title)
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                    ){
                    
                        ForEach(fruits,id: \.self){fruit in
                            Text(fruit)
                                .font(.title)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: Move)
                        
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
               trailing:
                Button("ADD", action:{
                   add()
            })
                )
        }
       
    }
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
//    func Move(move:IndexSet, newoffsets:Int) {
//        fruits.move(fromOffsets: move, toOffset: newoffsets)
    func Move(indices:IndexSet, newoffsets:Int){
        fruits.move(fromOffsets: indices, toOffset: newoffsets)
    }
    func add(){
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}

