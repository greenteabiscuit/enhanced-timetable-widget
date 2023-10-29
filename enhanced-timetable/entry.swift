//
//  entry.swift
//  enhanced-timetableExtension
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit

extension enhanced_timetable {
    struct Entry: TimelineEntry {
        var date: Date = .now
    }
}

// MARK: - Data

extension enhanced_timetable.Entry {
    static var placeholder: Self {
        .init()
    }
}
