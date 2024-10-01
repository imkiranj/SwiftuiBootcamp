import SwiftUI
struct StatePropertyBootcamp: View {
    @State var backgroundcolor:Color = Color.purple
    @State var mytitle:String = "Hello"
    @State var count: Int = 0
    var body: some View {
        ZStack{
            backgroundcolor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                  Text(mytitle)
                    .font(.title)
                
                Text("Count:\(count)")
                
                HStack(spacing: 20){
                  Button("Button 1"){
                      backgroundcolor = .red
                      mytitle = "Button 1 was pressed"
                      count = count+1
                    }
                    Button("Button2"){
                        backgroundcolor = .green
                        mytitle = "Button 2 was pressed"
                        count = count - 1
                    }
                }
            }
            
        }
        
        .foregroundColor(.white)
    }
}

#Preview {
    StatePropertyBootcamp()
}
