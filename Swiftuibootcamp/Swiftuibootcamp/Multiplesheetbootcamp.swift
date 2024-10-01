import SwiftUI
struct RandomModel: Identifiable{
    let id = UUID().uuidString
    let title:String
}

struct Multiplesheetbootcamp: View {
    @State var selectedModel:RandomModel=RandomModel(title: "THis is the Starting title")
    @State var showsheet: Bool = false
                                                       
    var body: some View {
        VStack(spacing:20){
            Button("Button 1"){
                selectedModel = RandomModel(title: "one")
                    showsheet.toggle()
            }
            
            Button("Button 2"){
                selectedModel = RandomModel(title: "Two")
                    showsheet.toggle()
            }
        }
        .sheet(isPresented: $showsheet, content: {
            nextScreen(selectedmodel:  selectedModel)
        })
    }
}

struct nextScreen:View {
    let selectedmodel : RandomModel
    var body: some View {
        Text(selectedmodel.title)
            .font(.largeTitle)
    }
}

#Preview {
    Multiplesheetbootcamp()
}
