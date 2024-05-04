//
//  LazyVirtualProxyView.swift
//  DesignPatterns
//
//  Created by Andres Raigoza on 3/05/24.
//

import SwiftUI

struct LazyVirtualProxyView: View {
    let chicken = ChickenComposer.composed()
    
    var body: some View {
        Text(chicken.egg.hatch())
    }
}

#Preview {
    LazyVirtualProxyView()
}
