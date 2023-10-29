//
//  provider.swift
//  enhanced-timetableExtension
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit

extension enhanced_timetable {
    struct Provider: TimelineProvider {
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
        func placeholder(in context: Context) -> Entry {
            .placeholder
        }

        func getSnapshot(in context: Context, completion: @escaping (Entry) -> Void) {
            completion(.placeholder)
        }

        func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
            let currentDate = Date()
            let seconds = Calendar.current.component(.second, from: currentDate)
            let startDate = Calendar.current.date(byAdding: .second, value: -seconds, to: currentDate)!
            let entries = (0 ..< 60).map {
                let date = Calendar.current.date(byAdding: .second, value: $0 * 60 - 1, to: startDate)!
                return Entry(date: date)
            }
            completion(.init(entries: entries, policy: .atEnd))
        }
    }
}
