//
//  LazyNavigationView.swift
//  
//
//  Created by Arif Siregar on 27/01/23.
//

import SwiftUI

public struct LazyNavigationView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    public var body: Content {
        build()
    }
}
