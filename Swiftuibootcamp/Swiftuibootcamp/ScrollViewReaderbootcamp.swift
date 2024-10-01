import SwiftUI
struct ScrollViewReaderbootcamp: View {
    @State var ScrolltoIndex: Int = 0
    @State var textfieldtext: String = ""
    var body: some View {
        VStack{
            TextField("Enter Number Here...", text: $textfieldtext)
                .frame(height: 55)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            
               Button("Search"){
                withAnimation(.spring()){
                    if let index = Int(textfieldtext) {
                        ScrolltoIndex = index
                    }
                }
            }
            
            ScrollView{
                ScrollViewReader { proxy in
                    ForEach(0..<50){index in
                        Text("This is item \(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of:ScrolltoIndex,perform: {value in
                        withAnimation(.spring()) {
                            proxy.scrollTo(value,anchor: .center)
                        }
                    })
                    
                }
                
            }
        }
    }
}
    
    #Preview {
        ScrollViewReaderbootcamp()
    }

