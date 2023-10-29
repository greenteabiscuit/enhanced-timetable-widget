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

        /*
        // Default initializer sets date based on current time
        init() {
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
                timePoints.append(TimePoint(hour: 18, min: 27, dest: "日吉"))
                timePoints.append(TimePoint(hour: 18, min: 28, dest: "日吉"))
                timePoints.append(TimePoint(hour: 18, min: 29, dest: "日吉"))
                timePoints.append(TimePoint(hour: 18, min: 30, dest: "日吉"))
                
                
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
            let dates = weekdayOjikamiyaTimepoints
                .filter {return $0 > Date()}
            let now = Date()
                    var closestTimePoint = now
            for timePoint in dates {
                if now < timePoint {
                    closestTimePoint = timePoint
                    break;
                }
            }
            
            self.date = closestTimePoint
        }
        
        // Additional initializer allows setting a specific date
        init(date: Date) {
            self.date = date
        }
         */
    }
}

// MARK: - Data

extension enhanced_timetable.Entry {
    static var placeholder: Self {
        .init()
    }
}
