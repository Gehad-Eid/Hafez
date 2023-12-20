//
//  SplashScreen.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        NavigationView {
            VStack{
                BackButtonCircle()
                NavigationLink(destination: Coloring().navigationBarBackButtonHidden(true)) {
                    Text("Hello, World!")
                    
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}
