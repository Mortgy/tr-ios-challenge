//
//  MovieModel.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation

struct MoviesModel: Codable {
    let movies: [MovieModel]?
}

struct MovieModel: Codable {
    let id: Int?
    let name: String?
    let thumbnail: String?
    let year: Int?
}
