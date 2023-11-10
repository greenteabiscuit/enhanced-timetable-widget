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
            HStack {
                VStack(alignment: .leading) {
                    Spacer()
                    contentView
                    Spacer()
                }
                VStack(alignment: .leading) {
                    Text("次のダイヤ")
                        .foregroundColor(.gray)
                    if entry.secondClosestDate != nil {
                        Text("\(entry.secondClosestDate!, formatter: Self.dateFormatter)")
                        .foregroundColor(.gray)
                    } else {
                        Text("本日は終了しました")
                        .foregroundColor(.gray)
                    }
                        
                }
            }
            .containerBackground(.clear, for: .widget)
        }
    }
}

// MARK: - Content

extension enhanced_timetable.EntryView {
    @ViewBuilder
    private var contentView: some View {
        HStack {
            Circle()
                .fill(Color.green)
                .frame(width: 20, height: 10)
            Text("王子神谷\n赤羽岩淵発")
                .font(.system(size: 15))
            if entry.closestDate != nil {
                Text("\(entry.closestDate!, formatter: Self.dateFormatter)")
            } else {
                Text("本日は終了しました")
            }
        }
        if entry.closestDate != nil {
            Text(entry.closestDate!, style: .timer)
                .font(.system(size: 30))
        }
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
