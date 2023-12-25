//
//  Profile.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI

struct Profile: View {
    @Binding var gender: Bool?

    var body: some View {
        ZStack{

            Color("bgColor").ignoresSafeArea()
            HStack(alignment: .top){
                BackButtonCircle()
                Spacer()
            }
            .padding(.bottom,690)
            VStack {
                ProimageCircle(gender: gender!)
                
                Text("تقدمي الاسبوعي:")
                    .accessibilityLabel("تقدمي الاسبوعي")
                    .font(.title)
                    .foregroundColor(Color("textColor"))
                    .shadow(radius: 20)
                    .padding(.top, 100)

//                 هنا جهاد تحط الكارد

                }
                
                
                
                
            }
        }

    }


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(gender: .constant(true))
    }
}
