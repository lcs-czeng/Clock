import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    WorldClockStructure(offset: "+0HRS", city: "Ottawa", time: "6:35", period: "AM")
                    WorldClockStructure(offset: "-3HRS", city: "Vancouver", time: "3:35", period: "AM")
                    WorldClockStructure(offset: "+6HRS", city: "Hamburg", time: "12:35", period: "PM")
                    WorldClockStructure(offset: "+16HRS", city: "Sydney", time: "10:35", period: "PM")
                    WorldClockStructure(offset: "+9HRS", city: "Dubai", time: "3:35", period: "PM")
                    WorldClockStructure(offset: "-1HR", city: "Mexico City", time: "5:35", period: "AM")
                }
            }
            .navigationTitle("World Clock")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Edit") {
                    }
                    .toolbar {
                        ToolbarItem(placement: .primaryAction) {
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "plus")
                            }
                        }
                    }
                }
            }
            .shadow(radius: 10)
        }
    }
}
#Preview {
    LandingView()
}
