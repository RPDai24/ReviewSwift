//
//  MomentHexagonView.swift
//  GratefulMoments
//
//  Created by hh on 10/03/2026.
//

import SwiftUI

struct MomentHexagonView: View {
    var moment: Moment
    @State var layout: HexagonLayout = .standard
    @Environment(\.locale) private var locale
    
    private var showImage: Bool {
        moment.image != nil
    }
    
    var body: some View {
        Hexagon(layout: layout, moment: moment) {
            hexagonContent()
        }

    }
    
    private func hexagonContent() -> some View {
        ZStack(alignment: .bottom) {
            if showImage {
                Color.clear
                contentStack()
                    .frame(maxWidth: .infinity)
                    .padding(.top, 8)
                    .background(.ultraThinMaterial)
                
            } else {
                Color.ember
                contentStack()
                    .frame(height: layout.size * 0.8)
            }
            
            Text(moment.timestamp.formatted(
                .dateTime.locale(locale)
                .month(.abbreviated).day()
            ))
            .font(.footnote)
            .padding(.bottom, layout.size * 0.08)
            .frame(maxWidth: layout.size / 3)
            .frame(maxHeight: layout.timestampHeigh)
            
        }
        .foregroundStyle(.white)

    }
    
    private func contentStack() -> some View {
        VStack(alignment: .leading) {
            Text(moment.title)
                .font(layout.titleFont)
            
            if !moment.note.isEmpty, !showImage {
                Text(moment.note)
                    .font(layout.bodyFont)
            }
        }
        .frame(maxWidth: layout.size * 0.8)
        .frame(maxHeight: layout.size * (showImage ? 0.15 : 0.5))
        .padding(.bottom, layout.size * layout.textBottomPadding)
        .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    ScrollView {
        MomentHexagonView(moment: Moment.imageSample)
        MomentHexagonView(moment: Moment.imageSample, layout: .large)
        MomentHexagonView(moment: Moment.sample)
        MomentHexagonView(moment: Moment.sample, layout: .large)
    }
}

#Preview("English language, region Great Britian") {
    MomentHexagonView(moment: Moment.imageSample)
        .environment(\.locale, Locale(identifier: "en_US"))
}

#Preview("Spanish language") {
    MomentHexagonView(moment: Moment.imageSample)
        .environment(\.locale, Locale(identifier: "es"))
}

