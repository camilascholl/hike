//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Camila Scholl on 31/12/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [
                        .customGrayMedium,
                            .customGrayMedium
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
