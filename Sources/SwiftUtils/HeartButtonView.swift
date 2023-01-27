//
//  HeartButtonView.swift
//  
//
//  Created by Arif Siregar on 27/01/23.
//

import SwiftUI

public struct HeartButtonView: View {
    @Binding public var isLiked: Bool
    @State private var animate = false
    
    let action: () -> Void
    
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat {
        isLiked ? 0.7 : 1.3
    }
    
    public var body: some View {
        Button(action: {
            self.animate = true
            
            DispatchQueue.main.asyncAfter(deadline: .now()+self.animationDuration, execute: {
                self.animate = false
                self.isLiked.toggle()
            })
            
            action()
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .foregroundColor(isLiked ? .red : .gray.opacity(0.2))
        })
        .scaleEffect(animate ? animationScale : 1)
        .animation(.easeIn(duration: animationDuration), value: 1)
    }
}

struct HeartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HeartButtonView(isLiked: .constant(false), action: {})
    }
}
