//
//  ContentView.swift
//  Moonshot
//
//  Created by Goncalves Higino on 11/02/24.
//

import SwiftUI

struct ContentView: View {
    
    let astronaut: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let mission: [Mission] = Bundle.main.decode("missions.json")
    
    @State var showingGrid: Bool = false
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    CustomGridView()
                } else {
                    CustomListView()
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button("Add Expense", systemImage: "fibrechannel") {
                    showingGrid.toggle()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
