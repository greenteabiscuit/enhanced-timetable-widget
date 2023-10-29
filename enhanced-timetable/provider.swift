//
//  provider.swift
//  enhanced-timetableExtension
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit

extension enhanced_timetable {
    struct Provider: TimelineProvider {
        static var conditions: [TimePoint] = [
            TimePoint(hour: 10, min: 50, dest: "日吉"),
            // Add some TimePoint instances to the array
            TimePoint(hour: 11, min: 02, dest: "白金高輪"),
            TimePoint(hour: 11, min: 14, dest: "日吉"),
            TimePoint(hour: 11, min: 26, dest: "白金高輪"),
            TimePoint(hour: 11, min: 38, dest: "横浜"),
            TimePoint(hour: 11, min: 50, dest: "日吉"),

            TimePoint(hour: 12, min: 02, dest: "白金高輪"),
            TimePoint(hour: 12, min: 14, dest: "日吉"),
            TimePoint(hour: 12, min: 26, dest: "白金高輪"),
            TimePoint(hour: 12, min: 38, dest: "横浜"),
            TimePoint(hour: 12, min: 50, dest: "日吉"),

            TimePoint(hour: 13, min: 02, dest: "白金高輪"),
            TimePoint(hour: 13, min: 14, dest: "日吉"),
            TimePoint(hour: 13, min: 26, dest: "白金高輪"),
            TimePoint(hour: 13, min: 38, dest: "横浜"),
            TimePoint(hour: 13, min: 50, dest: "日吉"),
            
            TimePoint(hour: 14, min: 02, dest: "白金高輪"),
            TimePoint(hour: 14, min: 14, dest: "日吉"),
            TimePoint(hour: 14, min: 26, dest: "白金高輪"),
            TimePoint(hour: 14, min: 38, dest: "横浜"),
            TimePoint(hour: 14, min: 50, dest: "日吉"),

            TimePoint(hour: 15, min: 02, dest: "白金高輪"),
            TimePoint(hour: 15, min: 14, dest: "日吉"),
            TimePoint(hour: 15, min: 26, dest: "白金高輪"),
            TimePoint(hour: 15, min: 38, dest: "横浜"),
            TimePoint(hour: 15, min: 50, dest: "日吉"),

            TimePoint(hour: 16, min: 02, dest: "白金高輪"),
            TimePoint(hour: 16, min: 14, dest: "日吉"),
            TimePoint(hour: 16, min: 26, dest: "白金高輪"),
            TimePoint(hour: 16, min: 38, dest: "横浜"),

            TimePoint(hour: 17, min: 0, dest: "日吉"),
            
            TimePoint(hour: 22, min: 39, dest: "日吉"),
            TimePoint(hour: 23, min: 20, dest: "横浜"),
            TimePoint(hour: 23, min: 58, dest: "白金高輪"),
        ]

        
        
        // Define the class with two Int fields: hour and min
        class TimePoint {
            var hour: Int
            var min: Int
            var date: Date
            var dest: String
            
            init(hour: Int, min: Int, dest: String) {
                let today = Calendar.current.startOfDay(for: Date())
                self.hour = hour
                self.min = min
                self.date = Calendar.current.date(bySettingHour: hour, minute: min, second: 0, of: today)!
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
                let otherDate = Calendar.current.date(byAdding: .second, value: $0 * 60, to: startDate)!
                let closestTimepoint = getClosestTimepoint(date: otherDate)

                let secondClosestTimepoint = getSecondClosestTimepoint(date: otherDate)
                return Entry(date: date, closestDate: closestTimepoint, secondClosestDate: secondClosestTimepoint)
            }
            completion(.init(entries: entries, policy: .atEnd))
        }
        
        func getClosestTimepoint(date: Date) -> Date {
            let calendar = Calendar.current
            
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            
            for condition in Provider.conditions {
                if (hour < condition.hour) || (hour == condition.hour && minute < condition.min) {
                    return condition.date
                }
            }
            
            return Provider.conditions[0].date
        }

        func getSecondClosestTimepoint(date: Date) -> Date {
            let calendar = Calendar.current
            
            
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            
            for (index, condition) in Provider.conditions.enumerated() {
                if (hour < condition.hour) || (hour == condition.hour && minute < condition.min) {
                    // todo: I hate this nested if condition
                    if (index + 1 < Provider.conditions.count) {
                        return Provider.conditions[index + 1].date
                    }
                }
            }
            
            return Provider.conditions[0].date
        }

    }
}
