//
//  Egg.swift
//  DesignPatterns
//
//  Created by Andres Raigoza on 4/05/24.
//

import Foundation

protocol EggProtocol {
    func hatch() -> String
}

class Egg: EggProtocol {
    let chicken: Chicken?

    init(chicken: Chicken) {
        self.chicken = chicken
    }

    func hatch() -> String {
        "Hatching…"
    }
}
