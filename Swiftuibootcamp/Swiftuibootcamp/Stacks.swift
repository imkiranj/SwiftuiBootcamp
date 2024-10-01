import SwiftUI
struct Stacks: View {
    //    Z-stack - zindex( back to front)
    
    var body: some View {
        
        //        ZStack(alignment: .top){
        //            Rectangle()
        //                .fill(Color.yellow)
        //                .frame(width: 350, height: 500)
        //
        //            VStack(alignment:.leading ){
        //                Rectangle()
        //                    .fill(.red)
        //                    .frame(width: 150, height: 150)
        //                Rectangle()
        //                    .fill(.green)
        //                    .frame(width: 100, height: 100)
        //
        //
        //                HStack(alignment:.bottom){
        //                    Rectangle()
        //                        .fill(Color.pink)
        //                        .frame(width: 80, height: 80)
        //                    Rectangle()
        //                        .fill(Color.purple)
        //                        .frame(width: 75, height: 75)
        //                    Rectangle()
        //                        .fill(Color.orange)
        //
        //                        .frame(width: 50, height: 50)
        //                }
        //                .background(.white)
        //
        //            }
        //            .background(.black)
        //        }
        
        //        VStack{
        //            Text("5")
        //                .font(.title)
        //                .underline()
        //                .foregroundColor(.red)
        //
        //            Text("Add to cart")
        //                .font(.headline)
        //
        //        }
        
        VStack(spacing:50) {
            ZStack{
                Circle()
                    .frame(width: 100 , height: 100)
                
                Text("1")
                    .foregroundColor(.white)
                    .font(.title)
            }
//            ZStack{
//                Circle()
//                    .frame(width: 100 , height: 100)
//                
//                Text("1")
//                    .foregroundColor(.white)
//                    .font(.title)
//            }
                        Text("1")
                            .font(.title)
                            .foregroundColor(.white)
                            .background(
                                Circle()
                                    .frame(width: 100 , height: 100)
                                )
            
        }
        
    }
}

#Preview {
    Stacks()
}
