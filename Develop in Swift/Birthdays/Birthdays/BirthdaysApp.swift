//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by hh on 04/03/2026.
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
