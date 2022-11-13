//
//  TattooView.swift
//  PinterestUI
//
//  Created by jmanerr on 11/12/22.
//

import SwiftUI

struct TattooView: View {
    @State var gridLayout: [GridItem] = [GridItem()]
    @State private var showingInked = false
    @State private var showingVintage = false
    @State private var showingForYou = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 20) {
                    ForEach(tattooPicture.indices, id: \.self) { index in
                        Image(tattooPicture[index].name)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: gridLayout.count == 1 ? 500 : .random(in: 150...300))
                            .scaledToFit()
                            .cornerRadius(10)
                            .shadow(color: Color.primary.opacity(0.3), radius: 1)
                    }
                    .padding(.all, 5)
                }
                .animation(.interactiveSpring(), value: gridLayout.count)
            }
            .navigationTitle("Inked")
            
            .toolbar {
                ToolbarItemGroup(placement: .navigation) {
                    Button("For You") {
                        showingForYou = true
                    }
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.small)
                    
                    .sheet(isPresented: $showingForYou) {
                        ForYouView()
                    }
                    
                    Button("Vintage") {
                        showingVintage = true
                    }
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.small)
                    
                    .sheet(isPresented: $showingVintage) {
                        VintageView()
                    }
                    
                    Button("Inked") {
                        showingInked = true
                    }
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.small)

                    }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 2 + 1)
                    } label: {
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}
                    
struct TattooView_Previews: PreviewProvider {
    static var previews: some View {
        TattooView()
    }
}
