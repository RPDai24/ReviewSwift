//
//  HexagonLayout.swift
//  GratefulMoments
//
//  Created by hh on 10/03/2026.
//

import Foundation

enum HexagonLayout {
    case standard
    case large
    
    var size: CGFloat {
        switch self {
        case .standard:
            return 200.0
        case .large:
            return 350.0
        }
    }
}
