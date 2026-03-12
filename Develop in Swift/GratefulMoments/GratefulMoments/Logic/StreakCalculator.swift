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
                // Streak already here. Don't increase the streak.
                // 5 posts in 1 day is a 1 streak. 5 posts in 2 days is a 2 streak.
                continue
            } else if daysAgo == streak + 1 {
                // A moment exists the day after the current streak, add to the streak
                streak += 1
                print("Increasing streak to \(streak)")
            } else {
                // The streak breaks if jumping more than one day
                break
            }
        }
        
        // Streak is calculated above starting from yesterday. Not yet saving a moment today shouldn't break the streak.
        // If a moment has been saved today, include it in the streak.
        if daysAgoArray.first == 0 {
            streak += 1
        }
        
        return streak
    }
}
