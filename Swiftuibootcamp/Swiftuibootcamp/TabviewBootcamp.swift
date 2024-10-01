import SwiftUI

struct TabviewBootcamp: View {
    var body: some View {
        TabView {
          HomeView()
            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Person")
                }
        }
    }
}
#Preview {
    TabviewBootcamp()
}

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.top)
            Text("Home View")
                .font(.title)
                .foregroundColor(.white)
        }
        .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
            
        }
    }
}
