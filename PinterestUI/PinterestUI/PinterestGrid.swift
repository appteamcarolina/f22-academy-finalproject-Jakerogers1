//
//  PinterestGrid.swift
//  PinterestUI
//
//  Created by jmanerr on 11/11/22.
//

import SwiftUI

struct PinterestGrid: View {
    
    struct Column: Identifiable {
        let id = UUID()
        var gridItems = [GridItem]()
    }
    
    varvar columns = [Column]()
    
    let spacing: CGFloat
    let horizontalPadding: CGFloat
    
    init(gridItems: [GridItem], numOfColumns: Int, spacing: CGFloat = 20, horizontalPadding: CGFloat = 20) {
        self.spacing = spacing
        self.horizontalPadding = horizontalPadding
        
        var columns = [Column]()
        for _ in 0 ..< numOfColumns {
            columns.append(Column())
        }
        var columnsHeight = Array<CGFloat>(repeating: 0, count: numOfColumns)
        
        for gridItem in gridItems {
            var smallestColumnIndex = 0
            var smallestHeight = columnsHeight.first!
            for i in 1 ..< columnsHeight.count {
                let curHeight = columnsHeight[i]
                if curHeight < smallestHeight {
                    smallestHeight = curHeight
                    smallestColumnIndex = i
                }
            }
            columns[smallestColumnIndex].gridItems.append(gridItem)
            columnsHeight[smallestColumnIndex] += gridItem.height
        }
        self.columns = columns
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: spacing) {
            ForEach(columns) { column in
                LazyVStack(spacing: spacing) {
                    ForEach(column.gridItems) { gridItem in
                        
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(height: gridItem.height)
                            .overlay(
                                Text(gridItem.title)
                                    .font(.system(size: 30, weight: .bold))
                            )
                    }
                }
            }
        }
        .padding(.horizontal, horizontalPadding)
    }
}

struct PinterestGrid_Previews: PreviewProvider {
    static var previews: some View {
        ForYouView()
    }
}
