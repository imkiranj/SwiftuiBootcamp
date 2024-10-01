import SwiftUI
struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let Count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isloading: Bool = false
    
    func getfruits() {
        let fruit1 = FruitModel(name: "Banana", Count: 10)
        let fruit2 = FruitModel(name: "Peach", Count: 15)
        let fruit3 = FruitModel(name: "Mango", Count: 20)
        
        isloading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [self] in
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            isloading = false
        }
        
        
    }
    
    func deletefruit(at offsets: IndexSet) {
        fruitArray.remove(atOffsets: offsets)
    }
}

struct ViewModelbootcamp: View {
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isloading{
                    ProgressView()
                }else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text(fruit.name)
                                .foregroundColor(.red)
                                .font(.headline)
                            Text("\(fruit.Count)")
                                .font(.headline)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deletefruit)
                }
                
            }
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: randomScreen(), label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
            .onAppear {
                fruitViewModel.getfruits()
            }
        }
    }
}

struct randomScreen:View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                
            }, label: {
                Text("Go Back")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            })
        }
    }
}

struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelbootcamp()
        randomScreen()
    }
}

