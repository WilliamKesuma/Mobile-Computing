//
//  ContentView.swift
//  splitbill
//
//  Created by student on 11/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkamount = 0.0
    @State private var numberofpeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountisfocused: Bool
    
    let tippercentages = [10, 15, 20, 25, 0]
    
    var totalPerson: Double{
        let peopleCount = Double(numberofpeople + 2)
        let tipselection = Double(tipPercentage)
        
        let tipValue = checkamount / 100 * tipselection
        let grandtotal = checkamount + tipValue
        let ammountperperson = grandtotal / peopleCount
        return ammountperperson
    }
    var body: some View{
        NavigationStack {
            Form{
                Section{
                    TextField("Amount",
                              value:$checkamount,
                              format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountisfocused)
                    Picker("Number of people", selection: $numberofpeople) {
                        ForEach(2..<11) { personcount in
                            Text("\(personcount) people")}
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section {
                    Picker("Tip Percentage",
                           selection: $tipPercentage) {
                        ForEach(tippercentages, id:
                                    \.self) {
                            Text($0, format: .percent)
                        }
                    }
                           .pickerStyle(.segmented)
                }
                
                Text("Payment amount")
                Text(totalPerson,
                     format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
            .navigationTitle("SplitBill")
            .toolbar {
                if amountisfocused {
                    Button("done") {
                        amountisfocused = false
                    }
                }
            }
        }
    }
}
        

    
    
//    let students = ["Amel", "Bern", "Cid"]
//    
//    @State private var selectedstudents = "Bern"
//    
//    var body: some View{
//        NavigationStack{
//            Form{
//                Picker("Select your student", selection: $selectedstudents) {
//                    ForEach(students, id: \.self) { student in
//                        Text(student)
//                    }
//                }
//            }
//        }
//    }
    
//    @State private var name = ""
//    
//    var body: some View {
//        Form{
//            TextField("Enter your name", text: $name)
//
//            Text("Your name is \(name)")
//        }
//    }
    
    
//    @State var tapCount = 0
//    
//    var body: some View {
//        Button ("Tap Count: \(tapCount)") {
//            tapCount += 1
//        }
//    }
    
//    var body: some View {
//        NavigationStack{
//            Form {
//                Text("Hello, world!")
//                Text("Hello, world!")
//                
//                Section{
//                    Text("Hello, world!")
//                }
//                
//                Section(header: Text("Preferences")) {
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                }
//            }
//            .navigationTitle("User Form")
//            .navigationBarTitleDisplayMode(.inline)

//    }

#Preview {
    ContentView()
}
