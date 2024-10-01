import SwiftUI
struct SafeAreabootcamp: View {
    var body: some View {
      ScrollView {
          VStack{
              Text("Content goes here")
                  .font(.largeTitle)
                  .frame(maxWidth: .infinity, alignment: .leading)
              
              ForEach(0..<10) {index in
                  RoundedRectangle(cornerRadius: 25.0)
                      .fill(Color.white)
                      .frame(height: 150)
                      .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                      .padding(20)
              }
          }
         
        }
      .background(Color.red)
//      .edgesIgnoringSafeArea(.all)
    }
       
}

#Preview {
    SafeAreabootcamp()
}
