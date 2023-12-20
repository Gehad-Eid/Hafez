//
//  components.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI

struct BackButtonCircle: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image("bk")
                .foregroundColor(.blue)
                .bold()
                .frame(width: 100,height: 100)
        }
    }
}

struct DoneButtonCircle: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image("dn")
                .foregroundColor(.blue)
                .bold()
                .frame(height: 100)
        }
    }
}

struct SpeakerButtonCircle: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image("spkr")
                .foregroundColor(.blue)
                .bold()
                .frame(height: 100)
                .padding(.trailing,20)
        }
    }
}

