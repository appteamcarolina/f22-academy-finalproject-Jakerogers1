//
//  Update View.swift
//  PinterestUI
//
//  Created by jmanerr on 11/12/22.
//

import SwiftUI

struct UpdateView: View {
    @State private var showingUpdates = true
    @State private var showingMessages = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Image("Amber")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                        .clipShape(Circle())
                        .padding(.leading)
                    Text("See what Amber Fate found")
                        .font(.subheadline)
                        .bold()
                    Text("1h")
                        .font(.caption)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .padding(.trailing)
                }
                .padding(.bottom)
                HStack {
                    Image("Emma")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                        .clipShape(Circle())
                        .padding(.leading)
                    Text("See what Emma Chamberlain found in Art")
                        .font(.subheadline)
                        .bold()
                    Text("6h")
                        .font(.caption)
                        .padding(.trailing)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .padding(.trailing)
                }
                .padding(.bottom)
                
                Text("Room Decor, Bedroom and more ideas you've been looking for")
                    .padding(.top)
                    .padding(.leading, 5)
                    .padding(.trailing)
                    .font(.subheadline)
                    .bold()
                Image("UpdatePic")
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 20))

                
                Text("Your home feed has new Pins")
                    .padding(.top)
                    .padding(.trailing, 150)
                    .font(.subheadline)
                    .bold()
                Image("UpdatePic2")
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
            }
            .navigationTitle("")
            
            .toolbar {
                ToolbarItemGroup(placement: .navigation) {
                    Button("Updates") {
                        showingUpdates = true
                    }
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.small)
                    .padding(.leading, 95)
                    
                    Button("Messages") {
                        showingMessages = true
                    }
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.small)
                    
                    .sheet(isPresented: $showingMessages) {
                        MessageView()
                    }
                }
                
            }
                    
        }
    }
}

struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
         UpdateView()
    }
}
