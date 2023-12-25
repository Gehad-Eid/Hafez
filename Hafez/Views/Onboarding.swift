import SwiftUI

struct OnboardingItem: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var description: String
}

let onboardingData: [OnboardingItem] = [
    OnboardingItem(imageName: "boarding1", title: "أهلًا ايها الحافظ الصغير", description: "مستعد تبدأ معنا أول خطوات التنظيم؟"),
    OnboardingItem(imageName: "boarding2", title: "لون وإستمتع", description: "اجعل الصلاة لحظة من المرح والتأمل مع ألوان مشرقة وشخصيات محببة"),
    OnboardingItem(imageName: "boarding3", title: "إنتظم وإستمر", description: "اجعلوا التنظيم شريكًا يوميًا لحياتك، وستصبحون أكثر تركيزًا وفعالية"),
    OnboardingItem(imageName: "boarding4", title: "انت قدها ايها الحافظ", description: "معنا سيتم توجيهك إلى التنظيم اليومي وتطوير عادات صحيحة التي ستستمر معك مدى الحياة")
]



struct OnboardingView: View {
    @State private var currentPage = 0
    @State private var isOnboardingComplete = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
//                
//                HStack(alignment:.top){
//                    Spacer()
////                    SpeakerButtonCircle()
//
//
//                }.padding(.bottom,650)


                VStack {
                    TabView(selection: $currentPage) {
                        ForEach(onboardingData.indices, id: \.self) { index in
                            OnboardingSlideView(item: onboardingData[index])
                                .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    
                    if currentPage == 3 {
                        NavigationLink(destination: Name()) {
                            StartButtonCircle(isOnboardingComplete: $isOnboardingComplete)
                        }
                    } else {
                        NextButtonCircle(currentPage: $currentPage)
                    }

                    Spacer()

                        .fullScreenCover(isPresented: $isOnboardingComplete, content: {
                            Name()
                        })
                }
            }
        }
    }
}


struct OnboardingSlideView: View {
    let item: OnboardingItem

    var body: some View {
        VStack(alignment: .center) {
        
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300) // Adjust the frame size as needed
                .accessibilityLabel("صوره ترحيبية")

            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("textColor")) // Use the appropriate color type
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding()
                

            Text(item.description)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("textColor")) // Use the appropriate color type
                .padding()
        }
        .accessibilityLabel("\(item.title). \(item.description)")

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
