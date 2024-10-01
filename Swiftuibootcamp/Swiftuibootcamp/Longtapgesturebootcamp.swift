import SwiftUI
struct Longtapgesturebootcamp: View {
    
    @State var iscompleted:Bool = false
    @State var isSuccess:Bool = false
    
    var body: some View {
        
        VStack{
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: iscompleted ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            HStack{
                Text("CLICK HERE")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) { (ispressing) in
                           if ispressing {
                            withAnimation(.easeInOut(duration:1.0)) {
                               iscompleted = true
                            }
                           } else {
                               DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                                   if !isSuccess{
                                       withAnimation(.easeInOut){
                                           iscompleted = false
                                       }
                                   }
                               }
                           }
                    } perform: {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            isSuccess = true
                        }
                    }
                Text("RESET")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
        
        
        //        Text(iscompleted ? "Completed" : "Not Completed")
        //            .foregroundColor(.white)
        //        .padding()
        //        .padding(.horizontal)
        //        .background(iscompleted ? Color.red: Color.gray)
        //        .cornerRadius(10)
        ////        .onTapGesture {
        ////            iscompleted.toggle()
        ////        }
        //        .onLongPressGesture(minimumDuration: 2,maximumDistance: 2){
        //            iscompleted.toggle()
        //        }
        //
               }
        }
        
        #Preview {
            Longtapgesturebootcamp()
        }
    
