import SwiftUI

@main
struct Grid: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
struct ContentView: View {
    
    @State var arrColors : [Color] = [.yellow, .orange, .red, .cyan, .blue, .green, .brown, .gray, .black, .purple]
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        VStack {
            
            Text("Grid made using Swift For codebox!!")
                .font(.title)
            
            LazyVGrid(columns: columns) {
                
                ForEach(0..<arrColors.count) { i in
                    RoundedRectangle(cornerRadius: 13)
                        .fill(arrColors[i])
                        .frame(height: 110)
                }
            }
        }
        .padding()
    }
}

