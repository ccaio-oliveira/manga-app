//
//  ContentView.swift
//  MangaApp
//
//  Created by Caio Lucas Oliveira Vieira on 22/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
//            LibraryView()
//                .tabItem {
//                    Label("Library", systemImage: "books.vertical")
//                }
//            AccountView()
//                .tabItem {
//                    Label("Account", systemImage: "person")
//                }
        }
    }
}

#Preview {
    ContentView()
}
