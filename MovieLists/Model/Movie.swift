//
//  Movie.swift
//  MovieLists
//
//  Created by Edgars Jaudzems on 03/02/2021.
//

import Foundation

struct Movie {
    
    let title: String
    let year: String
    let poster: String
    let rating: String
    let director: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []

        let titles = DataManager.shared.title
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        let ratings = DataManager.shared.rating
        let directors = DataManager.shared.director
        
        for index in 0..<titles.count {
            let movie = Movie(title: titles[index], year: years[index], poster: posters[index], rating: ratings[index], director: directors[index])
            movies.append(movie)
        }

        return movies
    }
    
}
