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
                
                Text(attributedText)
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    var attributedText: AttributedString {
        var attributeString = AttributedString(localized: "^[\(numberOfDays)\nDays](inflect: true)")
        if let range = attributeString.range(of: "\(numberOfDays)") {
            attributeString[range].font = .system(size: 70)
        }
        return attributeString
    }
}

#Preview {
    StreakView(numberOfDays: 0)
    StreakView(numberOfDays: 1)
    StreakView(numberOfDays: 23)
}
