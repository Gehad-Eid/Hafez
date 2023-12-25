//
//  Coloring.swift
//  Hafez
//
//  Created by Gehad Eid on 20/12/2023.
//

import SwiftUI
import SwiftData

struct Coloring: View {
//    @Environment(\.modelContext) var modelContext
    @State var canvases: [canvas] = [] 
    {
           didSet {
               saveCanvases()
           }
       }
    
    @State private var lines : [Line] = []
    @State private var currentLine = Line()
    @State private var selectedColor = Color.clear
    @State private var currentColor = ""
    
//    private func addCanvas() {
//        let canvas = canvas(lines: lines)
////        modelContext.insert(canvas)
//    }
    
    private func saveCanvases() {
            if let encoded = try? JSONEncoder().encode(canvases) {
                UserDefaults.standard.set(encoded, forKey: "savedCanvases")
            }
        }

        private func loadCanvases() {
            if let savedData = UserDefaults.standard.data(forKey: "savedCanvases"),
               let decoded = try? JSONDecoder().decode([canvas].self, from: savedData) {
                canvases = decoded
            }
        }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                // Background color
                Color("bgColor").ignoresSafeArea()
                
                VStack {
                    HStack(alignment: .top){
                        BackButtonCircle()
                        Spacer()
                        DoneButtonCircle()
//                        SpeakerButtonCircle()
                    }
                    
//                    Spacer()
                    
                    Text("لوّن كل يوم صلاتك يا بطل")
                        .font(.title)
                        .foregroundStyle(Color("textColor"))
                        .accessibilityAddTraits(.isHeader)
                    
//                    Spacer()
                    
                    ZStack (alignment: .topTrailing){
                        Canvas{ context, size in
                            for line in lines {
                                var path = Path()
                                path.addLines(line.points)
                                context.stroke(path, with: .color(/*Color(line.colorString)*/ .red) ,style: StrokeStyle(lineWidth:2, lineCap: .round, lineJoin: .round))
                            }
                        }
                        .gesture(
                            DragGesture(minimumDistance: 0, coordinateSpace: .local)
                                .onChanged({ value in
                                    let newPoint = value.location
                                    currentLine.points.append(newPoint)
                                    self.lines.append(currentLine)
//                                    addCanvas()
                                })
                                .onEnded({ value in
                                    self.currentLine = Line(points: [],colorString: selectedColor.description)
                                })
                        )
                        
                        Image("imagec")
                            .resizable()
                            .opacity(0.5)
                            .frame(width: geometry.size.width > 1700 ?  geometry.size.width * 0.5 : geometry.size.width * 0.7, height: geometry.size.height < 500 ? geometry.size.height * 0.5 : geometry.size.height * 0.6)
                            .accessibilityLabel("شجرة صلوات الإسبوع")
                            .accessibilityHint("اختر لون من الاسفل و قم بتحديد الصلاة المناسبة")
                    }
                    .onChange(of: selectedColor){ newColor in
                        currentLine.colorString = newColor.description
                    }
                    .frame(width: geometry.size.width > 1700 ?  geometry.size.width * 0.5 : geometry.size.width * 0.7, height: geometry.size.height < 500 ? geometry.size.height * 0.5 : geometry.size.height * 0.6)
                    
                    Spacer()
                    
                    HStack(alignment: .bottom){
                        Spacer()
                        
                        Image("gren")
                            .resizable()
                            .frame(width: 70, height: currentColor == "green" ? 180 : 200)
                            .accessibilityHint("قم بالضغط عليه لمرة حتى يتم اختيار اللون الاخضر")
                            .accessibilityLabel("في وقتها")
                            .onTapGesture {
                                selectedColor = Color.green
                                currentColor = "green"
                            }
                        
                        Spacer()
                        
                        Image("yel")
                            .resizable()
                            .frame(width: 70, height: currentColor == "yel" ? 180 : 200)
                            .accessibilityHint("قم بالضغط عليه لمرة حتى يتم اختيار اللون الاصفر")
                            .accessibilityLabel("تأخرتُ قليلًا")
                            .onTapGesture {
                                selectedColor = Color.yellow
                                currentColor = "yel"
                            }
                        
                        Spacer()
                        
                        Image("red")
                            .resizable()
                        //                            .frame(width: 70,height: 200)
                            .frame(width: 70, height: currentColor == "red" ? 180 : 200)
//                            .accessibilityElement()
                            .accessibilityLabel("لم اُصلِها")
                            .accessibilityHint("قم بالضغط عليه لمرة حتى يتم اختيار اللون الاحمر")
                            .onTapGesture {
                                selectedColor = Color.red
                                currentColor = "red"
                            }
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                }
            }
        }
    }
}

//#Preview {
//    Coloring()
//}
