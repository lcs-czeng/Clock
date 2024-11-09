//
//  ContentView.swift
//  Clock
//
//  Created by Michael on 2024/11/8.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            TabView(selection: Binding.constant(1)) {
                WorldClockView()
                    .tabItem {
                        Image(systemName: "globe")
                        Text("World Clock")
                    }
                    .tag(1)
                
                AlarmView()
                    .tabItem {
                        Image(systemName: "alarm.fill")
                        Text("Alarm")
                    }
                    .tag(2)
     
                StopWatchView()
                    .tabItem {
                        Image(systemName: "stopwatch.fill")
                        Text("Stopwatch")
                    }
                    .tag(3)
            }
            .preferredColorScheme(.dark)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    LandingView()
}
