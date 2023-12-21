//
//  Coloring.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI

struct Coloring: View {
    var body: some View {
        ZStack{
            // Background color
            Color("bgColor").ignoresSafeArea()
            
            VStack {
                HStack(alignment: .top){
                    BackButtonCircle()
                    Spacer()
                    DoneButtonCircle()
                    SpeakerButtonCircle()
                }
                
                Spacer()
                
                Text("لوّن كل يوم صلاتك يا بطل")
                    .font(.title)
                    .foregroundStyle(Color("textColor"))
                
                Spacer()
                
                ZStack (alignment: .topTrailing){
                    Image("imagec")
                        .resizable()
                        .frame(width: 350,height: 400)
                    
                    Image(systemName: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left")
                        .padding(10)
                }
                
                
                HStack(alignment: .bottom){
                    
                    Image("gren")
                        .resizable()
                        .frame(width: 70,height: 200)
                    Image("yel")
                        .resizable()
                        .frame(width: 70,height: 200)
                    Image("red")
                        .resizable()
                        .frame(width: 70,height: 200)
                    
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    Coloring()
}
