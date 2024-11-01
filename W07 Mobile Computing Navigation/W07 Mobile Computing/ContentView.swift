//
//  ContentView.swift
//  W07 Mobile Computing
//
//  Created by student on 01/11/24.
//

import SwiftUI

struct ContentView:View {
    @State private var isShowingInspector = false
    
    var body: some View{
        Button("Hello, SwiftUI") {
            isShowingInspector.toggle()
        }
        .font(.largeTitle)
        .inspector(isPresented: $isShowingInspector){
            Text("Inspector View")
        }
    }
}

//struct ContentView:View {
//    @State private var columnVisibility =
//    NavigationSplitViewVisibility.detailOnly
//    
//    var body: some View {
//        NavigationSplitView(columnVisibility: $columnVisibility) {
//            Text("Sidebar")
//        } content: {
//            Text("Content")
//        } detail: {
//            VStack {
//                Button("Detail Only") {
//                    columnVisibility = .detailOnly
//                }
//                
//                Button("Content and Detail") {
//                    columnVisibility = .doubleColumn
//                }
//                Button("Show All") {
//                    columnVisibility = .all
//                }
//            }
//        }
//    }
//}

//struct ContentView:View {
//    var body: some View {
//        NavigationSplitView{
//            Text("Sidebar")
//        } detail: {
//        Text("Detail View")
//        }
//    }
//}


//struct ContentView: View {
//    
//    var body: some View {
//        NavigationStack {
//            VStack{
//                NavigationLink{
//                    DetailView()
//                }label: {
//                    Label("Show Detail View", systemImage: "globe")
//                }
//            }
//            .navigationTitle("navigation")
//        }
//    }
//}

//struct ContentView: View {
//    @State private var title = "Binded Title"
//    
//    var body: some View {
//        NavigationStack {
//            Text("Hello, SwiftUI")
//                .font(.largeTitle)
//                .navigationTitle($title)
//                .navigationBarTitleDisplayMode(.inline)
//                .toolbarRole(.editor)
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            Text("SwiftUI")
//                .navigationTitle("Welcome")
//                .navigationBarTitleDisplayMode(.inline)
//        }
//    }
//}

#Preview {
    ContentView()
}
