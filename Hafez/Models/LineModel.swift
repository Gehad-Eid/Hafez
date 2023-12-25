//
//  LineModel.swift
//  Hafez
//
//  Created by Gehad Eid on 25/12/2023.
//

import SwiftUI
import SwiftData

@Model
class Line {
    var points = [CGPoint]()
//    var color = Color.red
    
    init(points: [CGPoint] = [CGPoint]()/*, color: Color = Color.red*/) {
        self.points = points
//        self.color = color
    }
}

@Model
class canvas {
   var lines = [Line]()
    
    init(lines: [Line] = [Line]()) {
        self.lines = lines
    }
}

