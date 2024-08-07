//
//  ContentView.swift
//  WeatherForecast
//
//  Created by hupochuan on 19/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView (.horizontal) {
            VStack {
                HStack {
                    DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                    DayForecast(day: "Tue", isRainy: true, high: 68, low: 55)
                    DayForecast(day: "Wed", isRainy: false, high: 70, low: 50)
                    DayForecast(day: "Thur", isRainy: true, high: 68, low: 55)
                    DayForecast(day: "Fri", isRainy: false, high: 70, low: 50)
                    DayForecast(day: "Sat", isRainy: true, high: 68, low: 55)
                    DayForecast(day: "Sun", isRainy: true, high: 68, low: 55)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }

    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
            
        }
        .padding()
    }
}
