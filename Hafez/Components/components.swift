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
struct StartButtonCircle: View {
    @Binding var isOnboardingComplete: Bool

    var body: some View {
        Button(action: {
            isOnboardingComplete = true // Changed from "currentPage -> Name()" to "currentPage = 0"
        }) {
            Image("Start")
                .foregroundColor(.blue)
                .bold()
                .frame(width: 100, height: 100)
        }
    }
}



struct DoneNamingeButtonCircle: View {
    @Binding var currentPageName: Int
    @Binding var isDone: Bool
    
    var body: some View {
                Button(action: {
                    isDone = true
                }) {
                    Image("Done")
                        .foregroundColor(.blue)
                        .bold()
                        .frame(width: 100, height: 100)
        
                }
            }
        }
//        Button(action: {
//            if name.isEmpty {
//                print("Please enter your name.")
//            } else {
//                UserDefaults.standard.set(name, forKey: "userName")
//                UserDefaults.standard.set(gender, forKey: "userGender")
//                
//                // Navigate to the next page (Home)
//                // You can use NavigationLink or other navigation methods here
//            }
//        })  {
//            Image("Done")
//                .foregroundColor(.blue)
//                .bold()
//                .frame(width: 100, height: 100)
//            
//        }
//    }
//}



struct NextButtonCircle: View {
    @Binding var currentPage : Int
    
    var body: some View {
        Button(action: {
            currentPage += 1
        }) {
            Image("Next")
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




struct FirstTapButton: View {
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Image("firstTap")
        }
    }
}


//struct ProButtonCircle: View {
//    var action: () -> Void
//
//    @Environment(\.dismiss) var dismiss
//    var gender: Bool?
//
//    var body: some View {
//        Button(action: {
//            action()
//        }) {
//            if let gender = gender {
//                Image(gender ? "proGirl" : "proBoy")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .foregroundColor(.blue)
//                    .frame(width: 100, height: 100)
//                    .clipShape(Circle())
//            }
//        }
//    }
//}


struct ProButtonCircle: View {
    @Environment(\.dismiss) var dismiss
    var gender: Bool?

    var body: some View {
        Button(action: {
            dismiss()
        }) {
            if let gender = gender {
                Image(gender ? "proGirl" : "proBoy")
                    .foregroundColor(.blue)
                    .bold()
                    .frame(height: 100)
                    .padding(.leading,20)

           }
        }
    }
}
