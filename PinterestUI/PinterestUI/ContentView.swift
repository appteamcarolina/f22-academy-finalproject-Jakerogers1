//
//  ContentView.swift
//  PinterestUI
//
//  Created by jmanerr on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAddView = false
    
    var body: some View {
        TabView {
            ForYouView()
                .tabItem() {
                    Image(systemName: "house")
            }
            
            SearchView()
                .tabItem() {
                    Image(systemName: "magnifyingglass")
                }
            
            AddView()
                .tabItem() {
                    Image(systemName: "plus")
                }
            
            UpdateView()
                .tabItem() {
                    Image(systemName: "ellipsis.bubble")
                }
            
            ProfileView()
                .tabItem() {
                    Image(systemName: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
