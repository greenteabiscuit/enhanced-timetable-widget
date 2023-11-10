//
//  provider.swift
//  enhanced-timetableExtension
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit

extension enhanced_timetable {
    struct Provider: TimelineProvider {
        static var weekdaySchedule: [TimePoint] = [
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

        static var weekendSchedule: [TimePoint] = [
            TimePoint(hour: 7, min: 31, dest: "王子神谷始発白金高輪"),
            TimePoint(hour: 7, min: 47, dest: "王子神谷始発横浜"),

            TimePoint(hour: 9, min: 17, dest: "日吉"),
            TimePoint(hour: 9, min: 30, dest: "白金高輪"),
            TimePoint(hour: 9, min: 48, dest: "日吉"),
            
            TimePoint(hour: 10, min: 00, dest: "白金高輪"),
            TimePoint(hour: 10, min: 14, dest: "日吉"),
            TimePoint(hour: 10, min: 26, dest: "白金高輪"),
            TimePoint(hour: 10, min: 38, dest: "横浜"),
            TimePoint(hour: 10, min: 50, dest: "日吉"),

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
            TimePoint(hour: 16, min: 50, dest: "日吉"),
            
            TimePoint(hour: 17, min: 02, dest: "白金高輪"),
            TimePoint(hour: 17, min: 14, dest: "日吉"),
            TimePoint(hour: 17, min: 26, dest: "白金高輪"),
            TimePoint(hour: 17, min: 38, dest: "横浜"),
            TimePoint(hour: 17, min: 50, dest: "日吉"),
            
            TimePoint(hour: 18, min: 02, dest: "白金高輪"),
            TimePoint(hour: 18, min: 14, dest: "日吉"),
            TimePoint(hour: 18, min: 26, dest: "白金高輪"),
            TimePoint(hour: 18, min: 38, dest: "横浜"),
            TimePoint(hour: 18, min: 50, dest: "日吉"),
            
            TimePoint(hour: 19, min: 02, dest: "白金高輪"),
            TimePoint(hour: 19, min: 29, dest: "白金高輪"),
            TimePoint(hour: 19, min: 59, dest: "白金高輪"),

            TimePoint(hour: 20, min: 06, dest: "武蔵小杉"),
            TimePoint(hour: 20, min: 30, dest: "白金高輪"),
            TimePoint(hour: 20, min: 59, dest: "日吉"),
            
            TimePoint(hour: 21, min: 59, dest: "横浜"),
            
            TimePoint(hour: 22, min: 28, dest: "日吉"),
            TimePoint(hour: 23, min: 08, dest: "白金高輪"),
            TimePoint(hour: 23, min: 31, dest: "武蔵小杉"),
        ]
        
        static var mondaySchedule = weekdaySchedule.map {TimePointWithDayOfWeek(hour: $0.hour, min: $0.min, dest: $0.dest, dayOfWeek: "Monday")}
        
        static var tuesdaySchedule = weekdaySchedule.map {TimePointWithDayOfWeek(hour: $0.hour, min: $0.min, dest: $0.dest, dayOfWeek: "Tuesday")}
        
        static var wednesdaySchedule = weekdaySchedule.map {TimePointWithDayOfWeek(hour: $0.hour, min: $0.min, dest: $0.dest, dayOfWeek: "Wednesday")}
        
        static var thursdaySchedule = weekdaySchedule.map {TimePointWithDayOfWeek(hour: $0.hour, min: $0.min, dest: $0.dest, dayOfWeek: "Thursday")}
        
        static var fridaySchedule = weekdaySchedule.map {TimePointWithDayOfWeek(hour: $0.hour, min: $0.min, dest: $0.dest, dayOfWeek: "Friday")}
        
        static var saturdaySchedule = weekendSchedule.map {TimePointWithDayOfWeek(hour: $0.hour, min: $0.min, dest: $0.dest, dayOfWeek: "Saturday")}
        
        static var sundaySchedule = weekendSchedule.map {TimePointWithDayOfWeek(hour: $0.hour, min: $0.min, dest: $0.dest, dayOfWeek: "Sunday")}
        
        static var weekSchedule = mondaySchedule + tuesdaySchedule + wednesdaySchedule + thursdaySchedule + fridaySchedule + saturdaySchedule + sundaySchedule
        
        
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
        
        // Define the class with two Int fields: hour and min
        class TimePointWithDayOfWeek {
            var hour: Int
            var min: Int
            var date: Date
            var dest: String
            private var _dayOfWeek: String
            var dayOfWeek: String {
                return _dayOfWeek
            }
            
            init(hour: Int, min: Int, dest: String, dayOfWeek: String) {
                let calendar = Calendar.current
                let now = Date()
                
                // Get the current weekday index (1 = Sunday, 2 = Monday, ..., 7 = Saturday)
                let currentWeekday = calendar.dateComponents([.weekday], from: now).weekday!
                
                // Convert the name to a weekday index
                let weekdayIndex: Int
                switch dayOfWeek.lowercased() {
                case "sunday": weekdayIndex = 1
                case "monday": weekdayIndex = 2
                case "tuesday": weekdayIndex = 3
                case "wednesday": weekdayIndex = 4
                case "thursday": weekdayIndex = 5
                case "friday": weekdayIndex = 6
                case "saturday": weekdayIndex = 7
                default: weekdayIndex = 1
                }
                // Calculate the number of days to add
                let daysToAdd = weekdayIndex - currentWeekday
                let day = calendar.date(byAdding: .day, value: daysToAdd, to: calendar.startOfDay(for: now))
                
                self.hour = hour
                self.min = min
                self.date = Calendar.current.date(bySettingHour: hour, minute: min, second: 0, of: day!)!
                self.dest = dest
                self._dayOfWeek = "Monday"
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
                /*
                if isWeekend(date: date) {
                    // for weekend!
                    let closestTimepoint = getClosestTimepointForWeekend(date: otherDate)

                    let secondClosestTimepoint = getSecondClosestTimepointForWeekend(date: otherDate)
                    return Entry(date: date, closestDate: closestTimepoint, secondClosestDate: secondClosestTimepoint)
                }
                 */
                
                // for weekday
                let closestTimepoint = getClosestTimepoint(date: otherDate)

                let secondClosestTimepoint = getSecondClosestTimepoint(date: otherDate)
                return Entry(date: date, closestDate: closestTimepoint, secondClosestDate: secondClosestTimepoint)
            }
            completion(.init(entries: entries, policy: .atEnd))
        }
        
        func isWeekend(date: Date) -> Bool {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.weekday], from: date)
            
            if let weekday = components.weekday {
                // Sunday = 1, Saturday = 7, Weekdays = 2-6
                return weekday == 1 || weekday == 7
            }
            
            return false
        }
        
        func getClosestTimepointForWeekday(date: Date) -> Date {
            let calendar = Calendar.current
            
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            
            for condition in Provider.weekdaySchedule {
                if (hour < condition.hour) || (hour == condition.hour && minute < condition.min) {
                    return condition.date
                }
            }
            if isFriday(date: date) {
                return Provider.weekendSchedule[0].date.addingTimeInterval(86400)
            }
            
            return Provider.weekdaySchedule[0].date
        }

        func getSecondClosestTimepointForWeekday(date: Date) -> Date {
            let calendar = Calendar.current
            
            
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            
            for (index, condition) in Provider.weekdaySchedule.enumerated() {
                if (hour < condition.hour) || (hour == condition.hour && minute < condition.min) {
                    // todo: I hate this nested if condition
                    if (index + 1 < Provider.weekdaySchedule.count) {
                        return Provider.weekdaySchedule[index + 1].date
                    }
                }
            }
            
            if isFriday(date: date) {
                return Provider.weekendSchedule[1].date.addingTimeInterval(86400)
            }
            
            return Provider.weekdaySchedule[0].date
        }
        
        func isFriday(date: Date) -> Bool {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.weekday], from: date)
            
            if let weekday = components.weekday {
                // Friday is represented by 6
                return weekday == 6
            }
            
            return false
        }

        func getClosestTimepoint(date: Date) -> Date {
            let calendar = Calendar.current
            
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            let weekSchedule = Provider.weekSchedule
            
            for condition in weekSchedule {
                if (hour < condition.hour) || (hour == condition.hour && minute < condition.min) {
                    return condition.date
                }
            }
            if isSunday(date: date) {
                return Provider.weekdaySchedule[0].date.addingTimeInterval(86400)
            }
            return weekSchedule[0].date
        }
        
        func getSecondClosestTimepoint(date: Date) -> Date {
            let calendar = Calendar.current
            
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            let weekSchedule = Provider.weekSchedule
            
            for condition in weekSchedule {
                if (hour < condition.hour) || (hour == condition.hour && minute < condition.min) {
                    return condition.date
                }
            }
            if isSunday(date: date) {
                return Provider.weekdaySchedule[1].date.addingTimeInterval(86400)
            }
            return weekSchedule[1].date
        }
        
        func getClosestTimepointForWeekend(date: Date) -> Date {
            let calendar = Calendar.current
            
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            let weekendSchedule = Provider.weekendSchedule
            
            for condition in weekendSchedule {
                if (hour < condition.hour) || (hour == condition.hour && minute < condition.min) {
                    return condition.date
                }
            }
            if isSunday(date: date) {
                return Provider.weekdaySchedule[0].date.addingTimeInterval(86400)
            }
            return weekendSchedule[0].date
        }

        func getSecondClosestTimepointForWeekend(date: Date) -> Date {
            let calendar = Calendar.current
            
            
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            let weekendSchedule = Provider.weekendSchedule
            
            for (index, condition) in weekendSchedule.enumerated() {
                if (hour < condition.hour) || (hour == condition.hour && minute < condition.min) {
                    // todo: I hate this nested if condition
                    if (index + 1 < weekendSchedule.count) {
                        return weekendSchedule[index + 1].date
                    }
                }
            }
            
            if isSunday(date: date) {
                return Provider.weekdaySchedule[1].date.addingTimeInterval(86400)
            }
            
            return weekendSchedule[0].date
        }

        func isSunday(date: Date) -> Bool {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.weekday], from: date)
            
            if let weekday = components.weekday {
                // Sunday is represented by 1
                return weekday == 1
            }
            
            return false
        }
    }
}
