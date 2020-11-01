//
//  ExitButton.swift
//
//
//  Created by João Gabriel Pozzobon dos Santos on 31/10/20.
//

import SwiftUI

struct ExitButton: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color(white: colorScheme == .dark ? 0.19 : 0.93))
            Image(systemName: "xmark")
                .resizable()
                .scaledToFit()
                .font(Font.body.weight(.bold))
                .scaleEffect(0.416)
                .foregroundColor(Color(white: colorScheme == .dark ? 0.62 : 0.51))
        }
    }
}

struct ExitButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExitButton()
                .previewLayout(.fixed(width: 100.0, height: 100.0))
                .previewDisplayName("Light Mode")
            ExitButton()
                .previewLayout(.fixed(width: 100.0, height: 100.0))
                .previewDisplayName("Dark Mode")
                .environment(\.colorScheme, .dark)
        }
    }
}
