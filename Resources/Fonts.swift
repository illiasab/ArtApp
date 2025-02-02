//
//  Fonts.swift
//  ArtApp
//
//  Created by Ylyas Abdywahytow on 1/26/25.
//

import Foundation

struct Font {
    let name: String
    let size: CGFloat
}

enum ArtAppFonts {
    static let s1 = Font(name: "Inter-VariableFont_opsz,wght", size: 14)
    static let s2 = Font(name: "Inter-VariableFont_opsz,wght", size: 16)
    static let i1 = Font(name: "Inter-VariableFont_opsz,wght", size: 20)
    static let t1 = Font(name: "Inter-VariableFont_opsz,wght", size: 24)
    static let sf = Font(name: "SF Pro", size: 30)
}
