import SwiftUI
struct Maskbootcamp: View {
    @State var rating: Int = 0
    var body: some View {
        ZStack{
            Starview
                .overlay(overlayview.mask(Starview))
            
        }
    }
    private var overlayview:some View{
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
            }
        }
        .allowsHitTesting(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
    }
 
private var Starview: some View{
    HStack{
        ForEach(1..<6){index in
            Image(systemName: "star.fill")
                .font(.title)
                .foregroundColor(rating >= index ? Color.yellow : Color.gray )
                .onTapGesture {
                    withAnimation(.easeInOut){
                        rating = index
                    }
                 
                }
           }
        }
    }
}
#Preview {
    Maskbootcamp()
}
