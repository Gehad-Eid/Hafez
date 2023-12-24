//
//  Home.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI

struct Home: View {
    var name: String

    var body: some View {
        VStack {
            Text("Welcome, \(name)!")
        }
     //   .navigationTitle("Home")
    }
}

struct Name_Previews: PreviewProvider {
    static var previews: some View {
        Name()
    }
    
}
