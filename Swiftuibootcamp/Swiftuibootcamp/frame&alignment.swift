import SwiftUI
struct frame_alignment: View {
    var body: some View {
        Text("Hello world")
            .background(Color.red)
            .frame(height: 100, alignment:.bottom)
            .background(.orange)
            .frame(width:200, alignment: .bottomLeading)
            .background(.purple)
            .frame(maxWidth: .infinity , alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
            
    
        
     }
}

#Preview {
    frame_alignment()
}
