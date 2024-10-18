//
//  ContentView.swift
//  W05_Mobile Computing
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var flagEmoji = "🏳️" // Bendera default
    private let flags = [
        "🇺🇸", "🇬🇧", "🇫🇷", "🇩🇪", "🇯🇵",
        "🇧🇷", "🇮🇩", "🇷🇺", "🇨🇳", "🇮🇹",
        "🇦🇺", "🇸🇪", "🇳🇱", "🇲🇽", "🇿🇦",
        "🇿🇲", "🇸🇬", "🇹🇭", "🇻🇳", "🇦🇷"
    ]

    var body: some View {
        VStack {
            Text(flagEmoji)
                .font(.system(size: 200)) // Ukuran emoji bendera
                .padding()

            Button(action: {
                flagEmoji = flags.randomElement() ?? "🏳️" // Pilih bendera secara acak
            }) {
                Text("GO!")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

