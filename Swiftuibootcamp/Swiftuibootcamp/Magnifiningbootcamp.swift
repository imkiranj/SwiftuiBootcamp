import SwiftUI
struct Magnifiningbootcamp: View {
    @State var CureentAmount: CGFloat = 0
    @State var LastAmount: CGFloat = 0
    var body: some View {
        VStack(spacing:10){
            HStack{
                Circle().frame(width: 35 , height: 35)
                Text("Swiftful Thinking")
                Spacer()
                 Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Rectangle()
                .frame(height: 300)
                .scaleEffect(1 + CureentAmount)
                .gesture(
                MagnificationGesture()
                    .onChanged {value in
                        CureentAmount = value - 1
                    }
                    .onEnded{value in
                        withAnimation(.spring()){
                            CureentAmount = 0
                        }
                        
                    }
                )
            HStack{
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
                
            }
            .padding()
            .font(.headline)
            Text("This is the caption for my photo!")
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
            
        }
    }
}

#Preview {
    Magnifiningbootcamp()
}
