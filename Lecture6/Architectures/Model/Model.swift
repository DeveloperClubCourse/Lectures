//
//  Model.swift
//  Architectures
//
//  Created by Daniel Pustotin on 21.03.2022.
//

import Foundation

class Model: Identifiable {
    var id = UUID()
    
    var text: String
    
    init(_ str: String) {
        text = str
    }
}

var array: [Model] = []

func setup() {
    array = []
    for _ in 0 ..< 10 {
        array.append(Model("\(Int.random(in: 0 ... 1000000))"))
    }
}
