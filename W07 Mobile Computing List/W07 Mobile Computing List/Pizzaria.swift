//
//  Pizzaria.swift
//  W07 Mobile Computing List
//
//  Created by student on 01/11/24.
//

import SwiftUI

struct Pizzaria: View {
    let name: String
    
    var body: some View {
        Text("Restaurant: \(name)")
    }
}

#Preview {
    Pizzaria(name: "?")
}
