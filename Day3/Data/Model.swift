//
//  Model.swift
//  Day3
//
//  Created by Jovan A on 15/06/22.
//

import Foundation

//struct Books: Codable {
//    var author: String
//    var country: String
//    var imageLink: String
//    var language: String
//    var link: String
//    var pages: Int
//    var title: String
//    var year: Int
//}

struct Books: Codable {
    var title: String?
    var isbn: String?
    var pageCount: Int?
    //var publishedDate:
    var thumbnailUrl: String?
    var shortDescription: String?
    var longDescription: String?
    var status: String?
    var authors: [String]?
    var categories: [String]?
}
