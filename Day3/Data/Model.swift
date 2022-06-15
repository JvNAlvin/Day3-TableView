//
//  Model.swift
//  Day3
//
//  Created by Jovan A on 15/06/22.
//

import Foundation

struct Books: Codable {
    var author: String
    var country: String
    var imageLink: String
    var language: String
    var link: String
    var pages: Int
    var title: String
    var year: Int
}
