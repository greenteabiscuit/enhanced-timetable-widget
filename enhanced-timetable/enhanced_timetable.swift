//
//  enhanced_timetable.swift
//  enhanced-timetable
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit
import SwiftUI

struct enhanced_timetable: Widget {
    let kind: String = "enhanced_timetable"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) {
            EntryView(entry: $0)
        }
    }
}

#Preview(as: .systemMedium) {
    enhanced_timetable()
} timeline: {
    enhanced_timetable.Entry.placeholder
}
