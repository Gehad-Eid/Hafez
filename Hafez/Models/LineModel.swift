//
//  LineModel.swift
//  Hafez
//
//  Created by Gehad Eid on 25/12/2023.
//

import SwiftUI

//@Model
struct Line: Codable {
    var points = [CGPoint]()
    var colorString: String // Store color as a String
    
    init(points: [CGPoint] = [], colorString: String = "") {
        self.points = points
        self.colorString = colorString
    }
    
//    // Convert Color to String for storing
//    mutating func setColor(_ color: Color) {
//        self.colorString = color.description // Store color as a string representation
//    }
//    
//    // Get Color from stored string
//    func getColor() -> Color {
//        return Color(colorString) // Retrieve color from the stored string
//    }
}

//@Model
class canvas: Codable {
    var lines = [Line]()
    
    init(lines: [Line] = []) {
        self.lines = lines
    }
}
