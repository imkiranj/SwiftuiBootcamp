import SwiftUI
struct ImageBootcamp: View {
    @State private var numberInput: String = ""
    @State private var savedNumbers: [Int] = []
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter a number", text: $numberInput)
                .keyboardType(.numberPad)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
            
            Button(action: saveNumber) {
                Text("Save")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            List(savedNumbers, id: \.self) { number in
                Text("\(number)")
            }
        }
        .padding()
    }
    
    private func saveNumber() {
        if let number = Int(numberInput) {
            savedNumbers.append(number)
            numberInput = ""  // Clear the input field after saving
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}

