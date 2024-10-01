import SwiftUI
struct postmodel:Identifiable, Codable {
    let userId : Int
    let id:Int
    let title: String
    let body: String
}

class DownloadwithescapingViewmodel:ObservableObject{
    // for decoding
    @Published var posts: [postmodel] = []
    
    init(){
        getposts()
    }
    
    func getposts(){
       guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else { return }
        
        URLSession.shared.dataTask(with:url) { (data, response, error) in
            
            /*
             guard
             let data = data,
             error == nil,
             let responce = responce as? HTTPURLResponce,
             responce.statuscode >= 200 && responce.statuscode < 300 else {
             Print("error downloading data")
             return
             }
             
             */
            
            guard let data = data else {
                print("No data")
                return()
             }
            guard error == nil else {
                print("Error:\(String(describing: error))")
                return
            }
            guard let response = response as? HTTPURLResponse else {
                print("Invalid Responce")
                return
            }
            
            guard response.statusCode >= 200 && response.statusCode <= 300 else {
                print("Status code Should be 2xx, but is \(response.statusCode)")
                return
            }
            
            print("SUCCESSFULLY DOWNLOADED DATA")
            print(data)
            let jsonString = String(data: data, encoding: .utf8)
            print(jsonString)
            
            // for decoding
            guard let newPost = try? JSONDecoder().decode(postmodel.self, from: data) else { return }
            DispatchQueue.main.async { [weak self] in
                self?.posts.append(newPost)
            }
        }.resume()
    }
}

struct Downloadwithescapingbootcamp: View {
    
    @StateObject var vm = DownloadwithescapingViewmodel()
    
    var body: some View {
        List{
            ForEach(vm.posts){post in
                VStack(alignment:.leading){
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .font(.caption)
                        .frame(maxWidth:.infinity, alignment: .leading)
                    
                }
            }
        }
    }
}

#Preview {
    Downloadwithescapingbootcamp()
}
