//
//  enhanced_timetableLiveActivity.swift
//  enhanced-timetable
//
//  Created by lvcha mmm on 2023/10/29.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct enhanced_timetableAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct enhanced_timetableLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: enhanced_timetableAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension enhanced_timetableAttributes {
    fileprivate static var preview: enhanced_timetableAttributes {
        enhanced_timetableAttributes(name: "World")
    }
}

extension enhanced_timetableAttributes.ContentState {
    fileprivate static var smiley: enhanced_timetableAttributes.ContentState {
        enhanced_timetableAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: enhanced_timetableAttributes.ContentState {
         enhanced_timetableAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: enhanced_timetableAttributes.preview) {
   enhanced_timetableLiveActivity()
} contentStates: {
    enhanced_timetableAttributes.ContentState.smiley
    enhanced_timetableAttributes.ContentState.starEyes
}
