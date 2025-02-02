//
//  extension.swift
//  ArtApp
//
//  Created by Ylyas Abdywahytow on 1/31/25.
//

import Foundation
enum names: String, CaseIterable, Identifiable {
    case picasso = "Pablo Picasso"
    case vangoh = "Vincent van Gogh"
    case fridaKhalo = "Frida Kahlo"
    case georgiaOKeeffe = "Georgia O'Keeffe"
    case rembrand = "Rembrand"
    var id : Self { self }
}

enum buttonOption: String {
    case back = "leftArrow"
    case add = "Add Circle"
    case search = "search"
    case close = "CloseButton"
}
