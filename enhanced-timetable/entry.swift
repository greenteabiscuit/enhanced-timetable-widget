//
//  entry.swift
//  enhanced-timetableExtension
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit

extension enhanced_timetable {
    // Define the class with two Int fields: hour and min
    class TimePoint {
        var hour: Int
        var min: Int
        var dest: String
        
        init(hour: Int, min: Int, dest: String) {
            self.hour = hour
            self.min = min
            self.dest = dest
        }
    }
    struct Entry: TimelineEntry {
        var date: Date = .now
        var closestDate: Date = .now
    }
}

// MARK: - Data

extension enhanced_timetable.Entry {
    static var placeholder: Self {
        .init()
    }
}
