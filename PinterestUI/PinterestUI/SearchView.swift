//
//  SearchView.swift
//  PinterestUI
//
//  Created by jmanerr on 11/12/22.
//

import SwiftUI

struct SearchView: View {
    @State private var search = ""
    @State private var showingSearchView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Image("1")
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 100)
                    Spacer()
                    
                    Text("Ideas for you")
                        .padding(.leading)
                        .padding(.top, 250)
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    HStack {
                        Text("Street fashion")
                            .padding(.leading)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .bold()
                        Spacer()
                        Image(systemName: "greaterthan")
                            .padding(.trailing)
                    }
                    Image("fashionSearch")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Spacer()
                    
                    Text("Popular on Pinterest")
                        .padding(.leading)
                        .padding(.top)
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text("Tattoo designs")
                            .padding(.leading)
                            .padding(.top, 1)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .bold()
                        Spacer()
                        Image(systemName: "greaterthan")
                            .padding(.trailing)
                    }
                    
                    Image("tattooSearch")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
                .navigationTitle("")
                .toolbar {
                    ToolbarItemGroup(placement: .navigation) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                            TextField("Search Pinterest", text: $search)
                                .font(.subheadline)
                                .padding(.trailing, 150)
                            Image(systemName: "camera.fill")
                        }
                        
                        //TextField("\(Image(systemName: "magnifyingglass")) Search Pinterest", text: $search)
                            //.foregroundColor(.white)
                            //.frame(height: 55)
                            //.frame(maxWidth: .infinity)
                            //.buttonStyle(.bordered)
                            //.controlSize(.small)
                    }
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
