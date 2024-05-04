//
//  ChickenComposer.swift
//  DesignPatterns
//
//  Created by Andres Raigoza on 4/05/24.
//

import Foundation

class LazyEggVirtualProxy: EggProtocol {
    var egg: EggProtocol?

    func hatch() -> String {
        egg?.hatch() ?? "" // forwards messages
    }
}

enum ChickenComposer {
    static func composed() -> Chicken {
        let lazyEgg = LazyEggVirtualProxy()
        let chicken = Chicken(egg: lazyEgg)
        lazyEgg.egg = Egg(chicken: chicken)
        return chicken
    }
}
