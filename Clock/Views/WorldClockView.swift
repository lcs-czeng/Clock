import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Today, +0HRS")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        Text("Ottawa")
                            .font(.system(size: 30))
                    }
                    Spacer()
                    HStack(alignment: .lastTextBaseline) {
                        Text("6:35")
                            .font(.system(size: 57, weight: .light))
                        Text("AM")
                            .font(.system(size: 30))
                    }
                }
                .padding(.top, 8)
                .padding(.horizontal)
                .border(Color.green)
            }
            WorldClockStructure(offset: "-3HRS", city: "Vancouver", time: "3:35", period: "AM")
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
        }
    }
}
    #Preview {
        LandingView()
    }
