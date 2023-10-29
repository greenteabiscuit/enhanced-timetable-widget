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
            let weekdayOjikamiyaTimepoints: [Date] = {
                var timePoints: [TimePoint] = []
                
                timePoints.append(TimePoint(hour: 10, min: 50, dest: "日吉"))
                
                // Add some TimePoint instances to the array
                timePoints.append(TimePoint(hour: 11, min: 02, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 11, min: 14, dest: "日吉"))
                timePoints.append(TimePoint(hour: 11, min: 26, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 11, min: 38, dest: "横浜"))
                timePoints.append(TimePoint(hour: 11, min: 50, dest: "日吉"))

                timePoints.append(TimePoint(hour: 12, min: 02, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 12, min: 14, dest: "日吉"))
                timePoints.append(TimePoint(hour: 12, min: 26, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 12, min: 38, dest: "横浜"))
                timePoints.append(TimePoint(hour: 12, min: 50, dest: "日吉"))

                timePoints.append(TimePoint(hour: 13, min: 02, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 13, min: 14, dest: "日吉"))
                timePoints.append(TimePoint(hour: 13, min: 26, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 13, min: 38, dest: "横浜"))
                timePoints.append(TimePoint(hour: 13, min: 50, dest: "日吉"))
                
                timePoints.append(TimePoint(hour: 14, min: 02, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 14, min: 14, dest: "日吉"))
                timePoints.append(TimePoint(hour: 14, min: 26, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 14, min: 38, dest: "横浜"))
                timePoints.append(TimePoint(hour: 14, min: 50, dest: "日吉"))

                timePoints.append(TimePoint(hour: 15, min: 02, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 15, min: 14, dest: "日吉"))
                timePoints.append(TimePoint(hour: 15, min: 26, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 15, min: 38, dest: "横浜"))
                timePoints.append(TimePoint(hour: 15, min: 50, dest: "日吉"))

                timePoints.append(TimePoint(hour: 16, min: 02, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 16, min: 14, dest: "日吉"))
                timePoints.append(TimePoint(hour: 16, min: 26, dest: "白金高輪"))
                timePoints.append(TimePoint(hour: 16, min: 38, dest: "横浜"))

                timePoints.append(TimePoint(hour: 17, min: 0, dest: "日吉"))
                
                timePoints.append(TimePoint(hour: 22, min: 39, dest: "日吉"))
                timePoints.append(TimePoint(hour: 23, min: 20, dest: "横浜"))
                timePoints.append(TimePoint(hour: 23, min: 58, dest: "白金高輪"))
                
                var dates: [Date] = []
                let calendar = Calendar.current
                let today = calendar.startOfDay(for: Date())
                
                for time in timePoints {
                    if let date = calendar.date(bySettingHour: time.hour, minute: time.min, second: 0, of: today) {
                        dates.append(date)
                    }
                }
                return dates
            }()
            let entries = weekdayOjikamiyaTimepoints
                .filter {return $0 > Date()}
                .map {return Entry(date: $0)}
            
            completion(.init(entries: entries, policy: .atEnd))
        }
    }
}
