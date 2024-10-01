import SwiftUI
struct DraggestureBootcamp: View {
    @State var offset: CGSize = .zero
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100 , height: 100)
            .offset(offset)
            .gesture(
              DragGesture()
                .onChanged{ value in
                    withAnimation(.spring()){
                        offset = value.translation
                    }
                    
                }
                .onEnded { value in
                    withAnimation(.spring()){
                        offset = .zero
                    }
                }
            )
    }
}

#Preview {
    DraggestureBootcamp()
}
