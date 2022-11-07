//
//  GridView.swift
//  PinterestUI
//
//  Created by jmanerr on 11/11/22.
//

import SwiftUI

struct GridView: View {
    
    struct Column: Identifiable {
        let id = UUID()
        var gridItems = [GridItem]()
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            ForEach(columns) { column in
                LazyVStack(spacing: 20) {
                    ForEach(column.gridItems) { gridItem in
                        
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(height: gridItem.height)
                            .overlay(
                                Text(gridItem.title)
                                    .font(.system(size: 30, weight: .bold))
                       

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
