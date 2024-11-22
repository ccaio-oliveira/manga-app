//
//  Manga.swift
//  MangaApp
//
//  Created by Caio Lucas Oliveira Vieira on 22/11/24.
//

import Foundation

struct Manga: Identifiable {
    let id = UUID()
    let title: String
    let coverImage: String
}

let sampleMangas = [
    Manga(title: "Naruto", coverImage: "naruto_cover"),
    Manga(title: "One Piece", coverImage: "one_piece_cover"),
    Manga(title: "Attack on Titan", coverImage: "attack_on_titan_cover")
]
