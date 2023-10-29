//
//  provider.swift
//  enhanced-timetableExtension
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit

extension enhanced_timetable {
    struct Provider: TimelineProvider {
        func placeholder(in context: Context) -> Entry {
            .placeholder
        }

        func getSnapshot(in context: Context, completion: @escaping (Entry) -> Void) {
            completion(.placeholder)
        }

        func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
            let currentDate = Date()
            let seconds = Calendar.current.component(.second, from: currentDate)
            // todo, didn't know what to initialize with here
            var entries = [Entry(date: currentDate)]
            if let startDate = Calendar.current.date(byAdding: .second, value: seconds, to: currentDate) {
                entries = (0 ..< 30).map {
                    if let date = Calendar.current.date(byAdding: .second, value: $0 * 120 - 1, to: startDate) {
                        return Entry(date: date)
                    }
                    // todo: didn't know what to return here
                    return Entry(date: currentDate)
                }
            }
            completion(.init(entries: entries, policy: .atEnd))
        }
    }
}
