//
//  MovieDetailsModel.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation

struct MovieDetailsModel: Codable {
    let id: Int?
    let name: String?
    let description: String?
    let notes: String?
    let rating: Float?
    let picture: String?
    let releaseDate: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description = "Description"
        case notes = "Notes"
        case rating = "Rating"
        case picture
        case releaseDate
    }
}
