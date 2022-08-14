//
//  PracticeSwiftUIWidget.swift
//  PracticeSwiftUIWidget
//
//  Created by 前田欣耶 on 2022/08/14.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct PracticeSwiftUIWidgetEntryView : View {
    // var entry: Provider.Entry

    @Environment(\.widgetFamily) var family
        
        @ViewBuilder
        var body: some View {
            if family == .accessoryInline {
                // 時計上のウィジェット
                Text("時計上のウィジェット")
            } else if family == .accessoryRectangular {
                // 長方形のウィジェット
                VStack(alignment: .leading) {
                    Text("長方形のウィジェット")
                        .font(.headline)
                        .widgetAccentable()
                    Text("Body 1")
                }.frame(maxWidth: .infinity, alignment: .leading)
            } else if family == .accessoryCircular {
                //円形のウィジェット
                Text("6")
            }
        }
}

@main
struct PracticeSwiftUIWidget: Widget {
    let kind: String = "PracticeSwiftUIWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            PracticeSwiftUIWidgetEntryView()
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.accessoryCircular, .accessoryRectangular, .accessoryInline])
    }
}

struct PracticeSwiftUIWidget_Previews: PreviewProvider {
    static var previews: some View {
        PracticeSwiftUIWidgetEntryView()
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
