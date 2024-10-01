import SwiftUI
struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = .red
    var body: some View {
        VStack(alignment:.leading,spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful thinking")
                .font(.headline)
                .fontWeight(.bold)
            Text("How to use context menu")
            }
        .padding(30)
        .foregroundColor(.white)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgroundColor = .gray
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .black
            }, label: {
                Text("Report Post")
            })
            
            Button(action: {
                backgroundColor = .pink
            }, label: {
                HStack{
                    Text("Like Post")
                    Image(systemName:("heart.fill"))
                }
            })
           
            
        }))
     
       
      
    }
}

#Preview {
    ContextMenuBootcamp()
}
