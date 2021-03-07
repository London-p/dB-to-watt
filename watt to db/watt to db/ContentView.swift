//
//  ContentView.swift
//  watt to db
//
//  Created by London Petway on 2/21/21.
//

import SwiftUI

struct ContentView: View {
    @State var watt = ""
    @State var db = ""

    
    var body: some View {
        
        NavigationView {
            VStack {
                Form {
                    Section {
                       
                        
                        
                        TextField("dBm",
                                  text: $db)
                            .keyboardType(.numberPad)
                        let dbs = Float(db)
                        let db2 = (dbs ?? 0) / 10
                        let db3 = powf(10, db2) / 1000
                        let db4 = String(db3)
                        Text ("\(db4)W")
                        TextField("Watts",
                                  text: $watt)
                            .keyboardType(.numberPad)
                        let watts = Float(watt)
                        let watt2 = (watts ?? 0) * 1000
                        let watt3 = log10f(watt2) * 10
                        
                        Text("\(watt3)dBm")
                    }
                    
            
        }
        }
            .navigationTitle("Decibels to Watts")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
}
