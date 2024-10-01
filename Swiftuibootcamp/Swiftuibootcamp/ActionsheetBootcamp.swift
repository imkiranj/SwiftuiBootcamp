import SwiftUI

struct ActionSheetExampleView: View {
    @State private var showActionSheet = false
    @State private var selectedOption = "None"
    
    var body: some View {
        VStack {
            Text("Selected Option: \(selectedOption)")
                .padding()
            
            Button("Show Action Sheet") {
                showActionSheet = true
            }
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(
                    title: Text("Choose an option"),
                    message: Text("Please select one of the options below."),
                    buttons: [
                        .default(Text("Option 1")) {
                            selectedOption = "Option 1"
                        },
                        .default(Text("Option 2")) {
                            selectedOption = "Option 2"
                        },
                        .destructive(Text("Delete")) {
                            selectedOption = "Delete"
                        },
                        .cancel()
                    ]
                )
            }
        }
        .padding()
    }
}

struct ActionSheetExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetExampleView()
    }
}

