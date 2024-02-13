//
//  DividerView.swift
//  Moonshot
//
//  Created by Goncalves Higino on 13/02/24.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    DividerView()
}
