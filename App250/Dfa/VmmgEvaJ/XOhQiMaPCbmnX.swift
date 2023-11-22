//
//  OecKyZfiiq.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct OecKyZfiiq: Codable, Hashable {
    
    var errors: Bool
    
    var rows: [zqyhMEJBQs]
}

struct zqyhMEJBQs: Codable, Hashable {
    
    var id: Int?
    var categoryId: Int?
    var title: String?
    var image: String?
    var video: String?
    
    var duration: Int?
}
