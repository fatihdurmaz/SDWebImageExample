//
//  Image.swift
//  SDWebImageExample
//
//  Created by Fatih Durmaz on 20.11.2023.
//

import Foundation

// JSON verilerini temsil eden yapı (struct)
struct Photo: Codable, Identifiable {
    let id: Int
    let url: URL

}

