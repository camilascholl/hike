//
//  CustomButtonView.swift
//  Hike
//
//  Created by Camila Scholl on 31/12/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenDark],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            Circle()
                .stroke(LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                        lineWidth: 4)
            
            Image(systemName: "image-montanhas")
                .font(.system(size: 30, weight: .light))
                .foregroundStyle(
                LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium],
                               startPoint: .top,
                               endPoint: .bottom)
                )
        } //: ZSTACK
        .frame(width: 58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
