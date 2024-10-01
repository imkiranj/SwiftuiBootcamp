import SwiftUI
struct mycustommodel:Identifiable{
    let id =  UUID().uuidString
    let title: String
}
struct Hashablebootcamp: View {
    let data: [mycustommodel] = [
        mycustommodel(title: "One"),
        mycustommodel(title: "Two"),
        mycustommodel(title: "Three"),
        mycustommodel(title: "Four"),
        mycustommodel(title: "Five")
    ]
    var body: some View {
        ScrollView{
            HStack(spacing:40){
                ForEach(data) { item in
                    Text(item.title)
                        .font(.headline)
                }
            
                
//                ForEach(data,id: \.self){item in
//                    Text(item)
//
                }
                
            }
        }
    }


#Preview {
    Hashablebootcamp()
}
