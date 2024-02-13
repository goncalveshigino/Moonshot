//
//  ListCustomView.swift
//  Moonshot
//
//  Created by Goncalves Higino on 13/02/24.
//

import SwiftUI

struct CustomListView: View {
    
    let astronaut: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let mission: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        List {
            ForEach(mission) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronaut)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .padding()
                        
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundStyle(.white.opacity(0.5))
                            
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.lightBackground)
                    }
                    .clipShape(.rect(cornerRadius: 10))
                    .overlay(
                      RoundedRectangle(cornerRadius: 10)
                        .stroke(.lightBackground)
                    )
                }
            }
            .padding([.horizontal, .bottom])
        }
        .listStyle(InsetListStyle())
    }
}

#Preview {
    CustomListView()
}
