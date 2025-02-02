//
//  SearchModel.swift
//  ArtApp
//
//  Created by Ylyas Abdywahytow on 2/2/25.
//

import SwiftUI
import Foundation

struct ArtistSearchHelper {
    static func search(artists: [Artist], searchText: String) -> [Artist] {
        if searchText.isEmpty {
            return artists
        } else {
            return artists.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
}
