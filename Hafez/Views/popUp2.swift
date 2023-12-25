//
//  popUp2.swift
//  Hafez
//
//  Created by Nora Aldossary on 11/06/1445 AH.
//

import SwiftUI

struct popUp2: View {
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
                            
                            Image( "late")
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

#Preview {
    popUp2()
}
