//
//  MomentEntryView.swift
//  GratefulMoments
//
//  Created by hh on 08/03/2026.
//

import SwiftUI

struct MomentEntryView: View {
    @State private var title = ""
    @State private var note = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                contenStack
            }
            .scrollDismissesKeyboard(.interactively)
            .navigationTitle("Grateful For")
        }

    }
    
    var contenStack: some View {
        VStack(alignment: .leading) {
            TextField(text: $title) {
                Text("Title (Rquired)")
            }
            .font(.title.bold())
            .padding(.top, 48)
            
            Divider()
            
            TextField("Log your small wins", text: $note, axis: .vertical)
                .multilineTextAlignment(.leading)
                .lineLimit(5...Int.max)
            
        }
        .padding()
    }
}

#Preview {
    MomentEntryView()
}
