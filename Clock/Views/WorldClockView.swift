import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack {
            HStack {
                VStack {
                    Text("Today, +0HRS")
                        .font(.system(size:17))
                        .foregroundColor(.gray)
                    Text("Ottawa")
                        .font(.system(size: 35))
                        .padding(.leading, -1)
                }
                .padding()
                HStack (alignment: .lastTextBaseline) {
                    Text("6:35")
                        .font(.system(size: 62, weight: .light))
                        .padding(.leading, 30)
                    Text("AM")
                        .font(.system(size:35))
                        .padding(.leading, -7)
                }
            }
            .border(Color.green)
            .navigationTitle("World Clock")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button("Edit") {
                        // Does nothing right now
                    }
                    .toolbar {
                        
                        ToolbarItem(placement: .primaryAction) {
                            
                            Button {
                                // Does nothing right now
                                
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
