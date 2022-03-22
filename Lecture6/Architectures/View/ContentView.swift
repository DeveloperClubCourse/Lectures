//
//  ContentView.swift
//  Architectures
//
//  Created by Daniel Pustotin on 21.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Button {
                setup()
            } label: {
                Text("Setup!")
            }
            
            List(array) { element in
                Text(element.text)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
