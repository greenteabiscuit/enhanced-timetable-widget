//
//  enhanced_timetable.swift
//  enhanced-timetable
//
//  Created by lvcha mmm on 2023/10/29.
//

import WidgetKit
import SwiftUI

struct Provider: AppIntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationAppIntent())
    }

    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: configuration)
    }
    
    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        return Timeline(entries: entries, policy: .atEnd)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationAppIntent
}

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

struct enhanced_timetableEntryView : View {
    var entry: Provider.Entry
    
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


    var body: some View {
        let closestDate = fetchClosestTimePoint()
        
        let components = updateCountdown()
        let futureDate = Calendar.current.date(byAdding: components, to: Date())!
        
        VStack {
            HStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 20, height: 10)
                Text("王子神谷\n赤羽岩淵発")
                Text("\(closestDate) ")
                Text(futureDate, style: .timer)
                    .font(.system(size: 30))
            }
        }
    }
    
    func fetchClosestTimePoint() -> String {
        let now = Date()
        var closestTimePoint = now

        for timePoint in weekdayOjikamiyaTimepoints {
            if now < timePoint {
                closestTimePoint = timePoint
                break;
            }
        }
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "HH:mm"

        return dateFormatter.string(from: closestTimePoint)
    }
    
    func updateCountdown() -> DateComponents {
        let now = Date()
        var closestTimePoint = now

        for timePoint in weekdayOjikamiyaTimepoints {
            if now < timePoint {
                closestTimePoint = timePoint
                break;
            }
        }
        return Calendar.current.dateComponents([.hour, .minute, .second], from: now, to: closestTimePoint)
    }
}

struct enhanced_timetable: Widget {
    let kind: String = "enhanced_timetable"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            enhanced_timetableEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
    }
}

extension ConfigurationAppIntent {
    fileprivate static var smiley: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "😀"
        return intent
    }
    
    fileprivate static var starEyes: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "🤩"
        return intent
    }
}

#Preview(as: .systemMedium) {
    enhanced_timetable()
} timeline: {
    SimpleEntry(date: .now, configuration: .smiley)
    SimpleEntry(date: .now, configuration: .starEyes)
}
