//
//  EntryView.swift
//  enhanced-timetableExtension
//
//  Created by lvcha mmm on 2023/10/29.
//


import SwiftUI

extension enhanced_timetable {
    struct EntryView: View {
        let entry: Entry

        var body: some View {
            VStack(alignment: .leading) {
                Spacer()
                contentView
                Spacer()
            }
            .containerBackground(.clear, for: .widget)
        }
    }
}

// MARK: - Content

extension enhanced_timetable.EntryView {
    @ViewBuilder
    private var contentView: some View {
        let minute = Calendar.current.component(.minute, from: entry.date)
        if minute % 2 == 0 {
            Text("Odd!")
        } else {
            Text("Even!")
        }
        if let x = Calendar.current.date(byAdding: .second, value: 1, to: entry.date) {
            Text("\(x, formatter: Self.dateFormatter)")
        }
        // Text(entry.date.adding(.second, value: 1), style: .time)
        Text(Calendar.current.startOfDay(for: .now), style: .timer)
    }
}

// MARK: - Helpers

extension enhanced_timetable.EntryView {
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = .init(identifier: "en_US_POSIX")
        formatter.dateFormat = "HH:mm"
        return formatter
    }()
}
