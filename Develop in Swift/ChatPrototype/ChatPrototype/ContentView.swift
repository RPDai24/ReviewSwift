//
//  ContentView.swift
//  ChatPrototype
//
//  Created by hupochuan on 19/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20, content: {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Knock! knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 20)
            Text("Who is there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
            
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
