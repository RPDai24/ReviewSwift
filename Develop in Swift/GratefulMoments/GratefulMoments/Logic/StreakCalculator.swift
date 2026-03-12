//
//  StreakCalculator.swift
//  GratefulMoments
//
//  Created by hh on 11/03/2026.
//

import Foundation

struct StreakCalculator {
    let calender = Calendar.current
    
    /// Counts the number of days in a row a moment has been saved
    ///
    /// Days are measured from the end of the day, rather than whatever time of day it is currently
    func calculateStreak(for moments: [Moment]) -> Int {
        let startOfToday = calender.startOfDay(for: .now)
        let endOfToday = calender.date(byAdding: DateComponents(day: 1, second: -1), to: startOfToday)!
        
        // Ex. [0, 0, 1, 2, 4, 5]
        let daysAgoArray = moments
            .reversed()
            .map(\.timestamp)
            .map { calender.dateComponents([.day], from: $0, to: endOfToday) }
            .compactMap { $0.day }
            
        print(daysAgoArray)
        var streak = 0
        for daysAgo in daysAgoArray {
            if daysAgo == streak {
                print("Streak already here. Don't increase the streak.")
                continue
            } else if daysAgo == streak + 1 {
                print("A moment exists the day after the current streak")
                streak += 1
                print("Increasing streak to \(streak)")
            } else {
                print("Streak of \(streak) broken with daysAgo \(daysAgo)")
                break
            }
        }
        
        return streak
    }
}
