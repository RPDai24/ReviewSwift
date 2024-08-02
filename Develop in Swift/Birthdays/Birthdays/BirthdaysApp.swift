//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by hh on 28/07/2024.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
