//
//  HomeView.swift
//  MangaApp
//
//  Created by Caio Lucas Oliveira Vieira on 22/11/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        MainLayout {
            List(sampleMangas) { manga in
                HStack {
                    Image(manga.coverImage)
                        .resizable()
                        .frame(width: 50, height: 75)
                        .cornerRadius(8)
                    
                    Text(manga.title)
                        .font(.headline)
                        .padding(.leading, 8)
                }
            }
        }
    }
}
