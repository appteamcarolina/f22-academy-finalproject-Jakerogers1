//
//  MessageView.swift
//  PinterestUI
//
//  Created by jmanerr on 11/12/22.
//

import SwiftUI

struct MessageView: View {
    @State private var newMessage = false
    @State private var showingUpdates = false
    @State private var showingMessages = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer()
                HStack {
                    Button {
                        newMessage = true
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                    }

                    Text("New message")
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                .padding(.leading)
                
                HStack {
                    Image("Amber")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                        .clipShape(Circle())
                        .padding(.leading)
                    VStack {
                        Text("Amber Fate Mitchell")
                            .font(.subheadline)
                            .bold()
                        Text("Shared a post")
                            .font(.caption)
                            .padding(.trailing, 50)
                    }
                    Spacer()
                }
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
                    
                    .sheet(isPresented: $showingUpdates) {
                        UpdateView()
                    }
                    
                    Button("Messages") {
                        showingMessages = true
                    }
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.small)
                }
                
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
