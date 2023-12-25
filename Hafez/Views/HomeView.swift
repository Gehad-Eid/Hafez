//
//  HomeView.swift
//  Hafez
//
//  Created by Deemh Albaqami on 11/06/1445 AH.
//
//
import SwiftUI

struct HomeView: View {
    @State private var isColoringViewActive: Bool = false
//    @Binding var name: String
    @Binding var gender: Bool?

    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("bgColor").ignoresSafeArea()
                
                HStack(alignment: .top) {
                    
                        
                    NavigationLink(destination: Profile(gender: $gender).navigationBarBackButtonHidden(true)){
                        ProButtonCircle(gender: gender!)
                    }
                    
                   

                    Spacer()

                }
                VStack {
                    Text("مرحبًا بك ايها المحافظ الصغير ")
                        .font(.title)
                        .shadow(radius: 10)
                        .foregroundColor(Color("textColor"))
                        .padding()
                        .accessibilityLabel("مرحبًا بك ايها المحافظ الصغير ")

                    NavigationLink("", destination: Coloring().navigationBarBackButtonHidden(true), isActive: $isColoringViewActive)
                        .opacity(0)

                    FirstTapButton {
                        isColoringViewActive = true
                    }
                }
                .padding(.top,150)
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(gender: .constant(true))
    }
}
