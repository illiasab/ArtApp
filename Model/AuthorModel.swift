//
//  AuthorModel.swift
//  ArtApp
//
//  Created by Ylyas Abdywahytow on 1/27/25.
//

import Foundation
import SwiftUI

// MARK: - Author
struct Author: Codable {
   let artists: [Artist]
    static let all:  Author =  Bundle.main.decode(file:"art.json")
}

// MARK: - Artist
struct Artist: Codable {
    let name: String
    let bio: String
    let image: String
    let works: [Work]
}

// MARK: - Work
struct Work: Codable {
    let title: String
    let  image:String
    let  info: String
}
