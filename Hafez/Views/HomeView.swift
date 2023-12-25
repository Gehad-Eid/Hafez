//
//  HomeView.swift
//  Hafez
//
//  Created by Deemh Albaqami on 11/06/1445 AH.
//
//
//import SwiftUI
//
//struct HomeView: View {
//    @State private var isColoringViewActive: Bool = false
//    @State private var gender: Bool = false
//
//    var body: some View {
//        ZStack{
//            Color("bgColor").ignoresSafeArea()
//            VStack {
//                HStack(alignment: .top){
//                    Spacer()
//                    proButtonCircle(gender: gender)
//                }
//                Text("مرحبًا بك ايها المحافظ الصغير ")
//                    .font(.title)
//                    .foregroundStyle(Color("textColor"))
//                
//
//                FirstTapButton {
//                    isColoringViewActive = true
//                }
//                .background(
//                    NavigationLink("", destination: Coloring(), isActive: $isColoringViewActive)
//                        .opacity(0)
//                        .buttonStyle(PlainButtonStyle())
//                )
//                
//            
//                
//
//                
//                
//            }.padding()
//    
//        }
//    }
//
//    struct proButtonCircle: View {
//        @Environment(\.dismiss) var dismiss
//        var gender : Bool
//        
//        var body: some View {
//            Button(action: {
//                dismiss()
//            }) {
//                Image(gender ? "proBoy" : "proGril")
//                    .foregroundColor(.blue)
//                    .bold()
//                    .frame(height: 100)
//                    .padding(.trailing,20)
//            }
//        }
//    }
//    struct FirstTapButton: View {
//        var action: () -> Void
//
//        var body: some View {
//            Button(action: {
//                action()
//            }) {
//                Image("firstTap")
//            }
//        }
//    }
//}
//
//
//    #Preview {
//        HomeView()
//    }
//
//import SwiftUI
//
//struct HomeView: View {
//    @State private var isColoringViewActive: Bool = false
//    @Binding var name: String
//    @Binding var gender: Bool?
//
//
//
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color("bgColor").ignoresSafeArea()
//                
//                HStack(alignment: .top) {
//                    Spacer()
//      //              ProButtonCircle(gender: gender)
//                }
//
//                VStack {
//                    Text("مرحبًا بك ايها المحافظ الصغير ")
//                        .font(.title)
//                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                        .foregroundColor(Color("textColor"))
//                        .padding()
//                    
//                    NavigationLink("", destination: Coloring(), isActive: $isColoringViewActive)
//                        .opacity(0)
//                       // .buttonStyle(PlainButtonStyle())
//
//                    FirstTapButton {
//                        isColoringViewActive = true
//                    }
//                }
//                .padding()
//            }
//        }
//    }
//}
//
//struct ProButtonCircle: View {
//    @Environment(\.dismiss) var dismiss
//    var gender: Bool?
//
//    var body: some View {
//        Button(action: {
//            dismiss()
//        }) {
//            if let gender = gender {
//                Image(gender ? "proGirl" : "proBoy")
//                    .foregroundColor(.blue)
//            } else {
//                Image("defaultProfileImage") // Provide a default image if gender is not selected
//                    .foregroundColor(.blue)
//            }
//            .bold()
//            .frame(height: 100)
//            .padding(.trailing, 20)
//        }
//    }
//}
//
//
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
import SwiftUI

struct HomeView: View {
    @State private var isColoringViewActive: Bool = false
    @Binding var name: String
    @Binding var gender: Bool?

    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("bgColor").ignoresSafeArea()
                
                HStack(alignment: .top) {
                    ProButtonCircle(gender: gender)
                    Spacer()
                    SpeakerButtonCircle()

                }
                VStack {
                    Text("مرحبًا بك ايها المحافظ الصغير ")
                        .font(.title)
                        .shadow(radius: 10)
                        .foregroundColor(Color("textColor"))
                        .padding()

                    NavigationLink("", destination: Coloring(), isActive: $isColoringViewActive)
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
        HomeView(name: .constant("mmmm"), gender: .constant(true))
    }
}
