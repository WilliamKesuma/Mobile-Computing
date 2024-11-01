//
//  ContentView.swift
//  W07 Mobile Computing List
//
//  Created by student on 01/11/24.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("SwiftUI")
                .navigationTitle("Welcome")
                .toolbar {
                    // Primary Action Group
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button("About") {
                            print("About tapped!")
                        }
                        Button("Help") {
                            print("Help tapped!")
                        }
                    }
                    
                    // Secondary Action Group
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button("Settings") {
                            print("Settings tapped!")
                        }
                        Button("Email me") {
                            print("Email tapped!")
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct ContentView: View {
//    var body: some View {
//        ScrollViewReader{
//            proxy in VStack{
//                Button("Jump to #50") {
//                    proxy.scrollTo(50, anchor:.top)
//                }
//                
//                List(0..<1000, id: \.self){
//                    i in Text("Example \(i)").id(i)
//                }
//            }
//        }
//    }
//}
                     

//struct ContentView: View {
//    @State private var users = ["Glenn", "Malcom", "Nicole"]
//    
//    var body: some View{
//        NavigationStack {
//            List {
//                ForEach(users, id: \.self) { user in
//                    Text(user)
//                }
//                .onMove(perform: move)
//                .onDelete(perform: delete)
//            }
//            .toolbar {
//                EditButton()
//            }
//        }
//    }
//    
//    func move(from source: IndexSet, to destination: Int) {
//        users.move(fromOffsets: source, toOffset: destination)
//        
//        print("User index: \(source.first!), destination: \(destination)")
//    }
//        
//        func delete(at offsets: IndexSet){
//            users.remove(atOffsets: offsets)
//            
//            print("user index: \(offsets.first!) deleted")
//        }
//    }

//struct ContentView: View {
//    var body: some View {
//        List {
//            Pizzaria(name: "Joe's Original")
//            Pizzaria(name: "The Original")
//        }
//    }
//}


//struct ContentView: View {
//    var body: some View {
//        List {
//            Text("Hello, Static Scrollable List")
//            Text("Hello, Static Scrollable List")
//            Text("Hello, Static Scrollable List")
//            Text("Hello, Static Scrollable List")
//            Text("Hello, Static Scrollable List")
//            
//            Text("Hello, Static Scrollable List")
//            Text("Hello, Static Scrollable List")
//            Text("Hello, Static Scrollable List")
//            Text("Hello, Static Scrollable List")
//            
//        }
//    }
//}

#Preview {
    ContentView()
}
