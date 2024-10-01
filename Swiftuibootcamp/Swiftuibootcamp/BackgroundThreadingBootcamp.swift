import SwiftUI
class Backgroundthreadviewmodel: ObservableObject {
    
    @Published var dataArray : [String] = []
    
    
    func fetchdata(){
        let newData = downloadData()
        dataArray = newData
    }
    
    public func downloadData() -> [String] {
        var data : [String] = []
        for x in 0..<100 {
            data.append("\(x)")
            print(data)
        }
        return data
    }
}

struct BackgroundThreadingBootcamp: View {
    
    @StateObject var vm = Backgroundthreadviewmodel()
    
    var body: some View {
        ScrollView{
            VStack(spacing:10){
                Text("Load Data")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        vm.fetchdata()
                    }
                
                ForEach(vm.dataArray, id: \.self){ item in
                    Text(item)
                        .font(.headline)
                        .foregroundColor(.red)
                }
                
            }
        }
   
    }
}

#Preview {
    BackgroundThreadingBootcamp()
}
