//
//  ReminderListStyle.swift
//  Today
//
//  Created by Артём Харченко on 11.04.2023.
//

import Foundation

enum ReminderListStyle: Int {
    case today
    case future
    case all
    
    var name: String {
        switch self {
        case .today:
            return NSLocalizedString("Today", comment: "Today style name")
        case .future:
            return NSLocalizedString("Future", comment: "Future style name")
        case .all:
            return NSLocalizedString("All", comment: "All style name")
        }
    }
    
    func shouldInclude(date: Date) -> Bool {
        let isToday = Locale.current.calendar.isDateInToday(date)
        switch self {
        case .today: return isToday
        case .future: return (date > Date.now) && !isToday
        case .all: return true
        }
    }
    
}
