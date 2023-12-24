//
//  Name.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI

struct Name: View {
    @State private var currentPageName = 0
    @State private var isDone = false
    @State private var name = ""
    
    @State private var isNameEntered: Bool = false

    
     
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .opacity(0.5)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack(alignment: .center) {
                    HStack(alignment: .top) {
                        Spacer()
                        SpeakerButtonCircle()
                            .padding(.trailing)
                            .padding(.bottom,130)
                    }
                    
                    Text("قم بالإختيار:")
                        .font(.title)
                        .foregroundColor(Color("textColor"))
                        .shadow(radius: 20)
                    HStack{
                        Image("boy")
                        Image("girl")
                    }.padding()
                    ZStack {
                        TextField(" ", text: $name)
                          //  .foregroundColor()
                            .multilineTextAlignment(.center)
                            .frame(height: 50)
                            .background(
                                Image("NameField")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: 250, maxHeight: 150)
                                    .clipped()
                            )
                    }
                    NavigationLink(destination: Home(name: name), isActive: $isDone) {
                                         EmptyView()
                                     }
                   DoneNamingeButtonCircle(currentPageName: $currentPageName, isDone: $isDone)
                    

                
                }
            }
        }
    }
}

#Preview {
    Name()
}
