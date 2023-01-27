//
//  CustomLoadingIndicator.swift
//  
//
//  Created by Arif Siregar on 27/01/23.
//

import SwiftUI

public struct CustomLoadingIndicator: View {
    public var body: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .accentColor(.white)
            .scaleEffect(x: 1.5, y: 1.5, anchor: .center)
            .frame(width: 80, height: 80)
            .background(Color(.systemGray).opacity(0.2))
            .cornerRadius(20)
    }
}
