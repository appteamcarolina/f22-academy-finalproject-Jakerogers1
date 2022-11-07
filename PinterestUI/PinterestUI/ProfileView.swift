//
//  ProfileView.swift
//  PinterestUI
//
//  Created by jmanerr on 11/11/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var exportPressed = false
    @State private var settingPressed = false
    @State var gridLayout: [GridItem] = [GridItem()]

    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            exportPressed = true
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.primary)
                        }
                        Button {
                            settingPressed = true
                        } label: {
                            Image(systemName: "gear")
                                .foregroundColor(.primary)
                        }
                        .padding(.trailing)
                    }
                    Spacer()
                    
                    Image("ProfilePicture")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaledToFit()
                        .clipShape(Circle())
                    
                    Text("Jake Rogers")
                        .font(.title)
                    
                    HStack {
                        Text("818 followers")
                            .font(.subheadline)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 5, height: 5)
                        Text("3 following")
                            .font(.subheadline)
                    }
                    Spacer()
                    LazyVGrid(columns: gridLayout, alignment: .center, spacing: 20) {
                        Image("Clothes")
                            .resizable()
                            .scaledToFill()
                        Text("Clothes")
                            .font(.title)
                        Image("Fashion")
                            .resizable()
                            .scaledToFill()
                        Text("Fashion")
                            .font(.title)
                        Image("DreamHome")
                            .resizable()
                            .scaledToFill()
                        Text("Dream Home")
                            .font(.title)
                        Image("ShoppingList")
                            .resizable()
                            .scaledToFill()
                        Text("Shopping List")
                            .font(.title)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
