//
//  ContentView.swift
//  Birthdays
//
//  Created by hh on 28/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = [
        Friend(name: "Elton Lin", birthday: .now),
        Friend(name: "John Court", birthday: Date(timeIntervalSince1970: 0))
    ]
    
    @State private var newName: String = ""
    @State private var newDate = Date.now
    
    var body: some View {
        NavigationStack {
            List(friends, id: \.name) { friend in
                HStack {
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                }
            }
        }

    }
}

#Preview {
    ContentView()
}
