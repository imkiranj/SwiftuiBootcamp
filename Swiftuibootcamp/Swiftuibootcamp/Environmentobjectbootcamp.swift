import SwiftUI
class EnvironmentViewModel:ObservableObject {
    @Published var dataArray:[String] = []
    
    init(){
        getdata()
    }
    
    func getdata(){
        self.dataArray.append(contentsOf: ["iphone","ipad","iMac","AppleWatch"])
    }
}

struct Environmentobjectbootcamp: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray,id: \.self){ item in
                    NavigationLink(destination: DetailView(selectedtext: item),
                                   label: {
                        Text(item)
                    })
                    
                }
            }
            .navigationTitle("ios Devices")
        }
    }
}

struct DetailView:View {
    
    let selectedtext: String
    
    var body:some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination:finalView(),
                           label: {
                Text(selectedtext)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            })
        }
    }
}

struct finalView : View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]), startPoint:.topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20){
                    Text("Item1")
                    Text("Item2")
                    Text("Item3")
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
   }
}

#Preview {
    
  Environmentobjectbootcamp()
//    finalView()
   
}
