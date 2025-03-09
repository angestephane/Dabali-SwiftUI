//
//  OutlinePlusIconButton.swift
//  Dabali
//
//  Created by stephane.boguhe on 06.03.25.
//

import SwiftUI

struct OutlinePlusIconButton: ButtonStyle {
    var cornerRadius: CGFloat = 18
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.fgGreen, lineWidth: 1)
            )
    }
}
