import SwiftUI

struct Name: View {
//    @State private var name = ""
    @State private var gender: Bool? = nil
    @State private var isDone = false

    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Image("Background")
                    .resizable()
                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)

                HStack(alignment: .top) {
                    Spacer()
//                    SpeakerButtonCircle()
                }
                .padding(.bottom)

                VStack {
                    Text("قم بالاختيار: ")
                        .font(.title)
                        .foregroundColor(Color("textColor"))
                        .shadow(radius: 20)
                        .padding(.top, 100)
                        .accessibilityLabel("قم بإختيار شخصيتك المناسبة")

                    HStack {
                        Image("boy")
                            .accessibilityLabel("ولد")
                            .opacity(gender == false ? 1.0 : 0.6)
                            .onTapGesture {
                                gender = false
                            }

                        Image("girl")
                            .accessibilityLabel("بنت")
                            .opacity(gender == true ? 1.0 : 0.6)
                            .onTapGesture {
                                gender = true
                            }
                    }
                    .padding()

//                    ZStack {
//                        TextField(" ", text: $name)
//                            .multilineTextAlignment(.center)
//                            .frame(height: 50)
//                            .background(
//                                Image("NameField")
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(maxWidth: 250, maxHeight: 150)
//                                    .clipped()
//                            )
//                    }
//                    .onChange(of: name) { newName in
//                        if newName.count > 15 {
//                            name = String(newName.prefix(15))
//                        }
//                    }


                    NavigationLink(destination: HomeView(gender: $gender).navigationBarBackButtonHidden(true), isActive: $isDone) {
                        EmptyView()
                    }
                    .hidden()
                

                    Button(action: {
                        if /*name.isEmpty ||*/ gender == nil {
                            // Show an alert or handle the case where name or gender is not entered
                        } else {
                            saveUserDataLocally()
                            isDone = true
                        }
                    }) {
                        Image("Done")
                            .opacity(gender != nil /*&& !name.isEmpty*/ ? 1.0 : 0.7)
//                            .accessibilityLabel("زر تم الاختيار")
                    }
                    .disabled(gender == nil /*|| name.isEmpty*/)
                    .padding()
                }
            }
        }
    }

    func saveUserDataLocally() {
//        UserDefaults.standard.set(name, forKey: "userName")
        UserDefaults.standard.set(gender, forKey: "userGender")
    }

    struct Name_Previews: PreviewProvider {
        static var previews: some View {
            Name()
        }
    }
}
#Preview {
    Name()
}

