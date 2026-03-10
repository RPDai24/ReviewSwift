//
//  Badge.swift
//  GratefulMoments
//
//  Created by hh on 10/03/2026.
//

import Foundation
import SwiftData

@Model
class Badge {
    var details: BadgeDetails
    
    init(details: BadgeDetails) {
        self.details = details
    }
}

extension Badge {
    static var sample: Badge {
        let badge = Badge(details: .firstEntry)
        return badge
    }
}
