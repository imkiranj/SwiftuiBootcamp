import SwiftUI
struct TextfieldBootcamp: View {
    @State var textfieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type Something here...", text: $textfieldText)
                    .padding()
                    .foregroundColor(.red)
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
                
                Button(action: {
                    if isappropriate(){
                        savetext()
                    }
                 
                    
                }, label: {
                    Text("Save Me")
                        .padding()
                        .font(.callout)
                        .frame(maxWidth: .infinity)
                        .background(isappropriate() ? Color.blue : Color.red)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                })
                
                .disabled(!isappropriate())
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                    
                }
                Spacer()
                
            }
            .padding()
            .navigationTitle("TextFieldBootcamp")
        }
    }
    
    func isappropriate() -> Bool {
        if textfieldText.count >= 3 {
            return true
        }
       return false
    }
    func savetext() {
        dataArray.append(textfieldText)
    }
}
#Preview {
    TextfieldBootcamp()
}
