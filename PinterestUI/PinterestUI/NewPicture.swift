//
//  NewPicture.swift
//  PinterestUI
//
//  Created by jmanerr on 11/12/22.
//

import Foundation

class NewPicture: ObservableObject {
    @Published var items = [Picture]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([Picture].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        
        items = []
    }
}

