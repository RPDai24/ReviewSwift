//
//  WelcomePage.swift
//  OnboardingFlow
//
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
//                    .font(.largeTitle)
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .fontWidth(.compressed)
                .fontDesign(.monospaced)
                .padding(.top)
//                .border(.black, width: 1.5)
            
            Text("Desciribe about the app, it is very useful, i am sure.")
                .font(.title2)
                .multilineTextAlignment(.leading)
//                .border(.black, width: 1.5)
        }
//        .border(.red, width: 1.5)
        .padding()
//        .border(.yellow, width: 1.5)
    }
}

#Preview {
    WelcomePage()
}
