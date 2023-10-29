//
//  entry.swift
//  enhanced-timetableExtension
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit

extension enhanced_timetable {
    struct Entry: TimelineEntry {
        var date: Date

        // Default initializer sets date based on current time
        init() {
            let now = Date()
            let hour = Calendar.current.component(.hour, from: now)
            
            if hour < 19 {
                self.date = Calendar.current.date(byAdding: .hour, value: 5, to: now)!
            } else {
                if let newDate = Calendar.current.date(byAdding: .hour, value: 3, to: now) {
                    self.date = newDate
                } else {
                    self.date = now  // Fallback in case date addition fails
                }
            }
        }
        
        // Additional initializer allows setting a specific date
        init(date: Date) {
            self.date = date
        }
    }
}

// MARK: - Data

extension enhanced_timetable.Entry {
    static var placeholder: Self {
        .init()
    }
}
