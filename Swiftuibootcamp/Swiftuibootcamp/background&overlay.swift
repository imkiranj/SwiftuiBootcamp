import SwiftUI
struct background_overlay: View {
    var body: some View {
        //        Rectangle()
        //          .frame(width: 100 , height: 100)
        //          .overlay(
        //            Rectangle()
        //            .fill(.blue)
        //            .frame(width:50 , height: 50)
        //           ,alignment: .topLeading)
        //
        //
        //          .background(
        //            Color(.red)
        //                .frame(width: 150 , height: 150), alignment: .bottomTrailing
        //
        //          )
        
        
        Image(systemName: "heart.fill")
            .font(.system(size:40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color.red , Color.yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100 , height: 100 )
                
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35 , height: 35)
                        .overlay(
                           Text("5")
                            .foregroundColor(.white)
                            
                        )
                        .shadow(radius: 10, x: 5, y: 5)
                        ,alignment: .bottomTrailing
                        
                            
                    
            )
        )
    }
}
            
        


#Preview {
    background_overlay()
}
