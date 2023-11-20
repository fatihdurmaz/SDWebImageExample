//
//  Image.swift
//  SDWebImageExample
//
//  Created by Fatih Durmaz on 20.11.2023.
//

import Foundation

// JSON verilerini temsil eden yapı (struct)
struct Photo: Codable, Identifiable {
    let id: String
    let author: String
    let width: Int
    let height: Int
    let url: URL
    let downloadURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id, author, width, height, url
        case downloadURL = "download_url"
    }
}

