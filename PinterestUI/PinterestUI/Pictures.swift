//
//  GridItem.swift
//  PinterestUI
//
//  Created by jmanerr on 11/11/22.
//

import Foundation

struct Picture: Identifiable {
    var id = UUID()
    let name: String
}

let pinterestPicture = (1...30).map { Picture(name: "\($0)") }
let tattooPicture = (1...10).map { Picture(name: "tattoo \($0)") }
let vintagePicture = (1...10).map { Picture(name: "Vin \($0)") }
