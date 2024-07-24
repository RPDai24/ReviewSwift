//
//  ContentView.swift
//  WeatherForecast
//
//  Created by hupochuan on 19/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", high: 70, low: 50)
            DayForecast(day: "Tue", high: 68, low: 55)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    
    var body: some View {
        VStack {
            Text(day)
            Image(systemName: "sun.max.fill")
                .foregroundStyle(Color.yellow)
            Text("\(high)")
            Text("\(low)")
            
        }
        .padding()
    }
}
