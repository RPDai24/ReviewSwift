//
//  StreakView.swift
//  GratefulMoments
//
//  Created by hh on 11/03/2026.
//

import SwiftUI

struct StreakView: View {
    var numberOfDays: Int
    
    var body: some View {
        Hexagon(borderColor: .secondary) {
            VStack(spacing: 0) {
                Text("Streak\(Image(systemName: "flame.fill"))")
                    .foregroundStyle(.ember)
                Text("\(numberOfDays)")
                    .font(.system(size: 70))
                Text("Days")
            }
        }
    }
}

#Preview {
    StreakView(numberOfDays: 23)
}
