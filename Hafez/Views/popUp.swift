//
//  popUp.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI

struct popUp: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
                .opacity(0.5)
            
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("beige"))
                    .frame(width: 300, height: 200)
                    .overlay(
                        VStack {
                            
                            Image( "good")
                                .foregroundColor(.white)
                                .imageScale(.large)
                            
                            Button(action: {
                                dismiss()
                            }) {
                                Image( "check")
                                    .foregroundColor(.white)
                                    .imageScale(.large)
                            }
                        }
                    )
            }

        }
    }
    
}
    
    #Preview{
            popUp()
        }
    
