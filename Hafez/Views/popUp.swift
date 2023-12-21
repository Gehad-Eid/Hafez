//
//  popUp.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI

struct popUp: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
                            Button("Show Pop-up") {
                                showAlert = true
                            }
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("Hello"),
                                message: Text("This is a pop-up notification!"),
                                dismissButton: .default(Text("Custom Button")) {
                                    // Handle custom button action
                                    print("Custom button tapped")
                                }
                            )
                        }    }
}

#Preview {
    popUp()
}
