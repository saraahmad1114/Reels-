//
//  Movie.swift
//  Reels
//
//  Created by Sara Ahmad on 4/13/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import Foundation

struct Movie{
    
    var title: String?
    var year: String?
    var imdbID: String?
    var type: String?
    var posterUrl: String?
    
    init(jsonDicitonary: [String: Any]) {
        
        guard
            let title = jsonDicitonary["Title"] as? String,
            let year = jsonDicitonary["Year"] as? String,
            let imdbID = jsonDicitonary["imdbID"] as? String,
            let type = jsonDicitonary["Type"] as? String,
            let posterUrl = jsonDicitonary["Poster"] as? String
                else {print("JSON did not unwrap"); return}
        
        self.title = title
        self.year = year
        self.imdbID = imdbID
        self.type = type
        self.posterUrl = posterUrl
    }
}

struct MovieDetails {

    var title: String?
    var year: String?
    var rating: String?
    var releaseDate: String?
    var genre: String?
    var director: String?
    var writer: String?
    var actors: String?
    var plot: String?
    var posterUrl: String?
    
    init(jsonDictionary: [String: Any]) {
        
        guard
            let title = jsonDictionary["Title"] as? String,
            let year = jsonDictionary["Year"] as? String,
            let rating = jsonDictionary["Rated"] as? String,
            let released = jsonDictionary["Released"] as? String,
            let genre = jsonDictionary["Genre"] as? String,
            let director = jsonDictionary["Director"] as? String,
            let writer = jsonDictionary["Writer"] as? String,
            let actors = jsonDictionary["Actors"] as? String,
            let plot = jsonDictionary["Plot"] as? String,
            let posterUrl = jsonDictionary["Poster"] as? String
                else {print("movieDetails JSON did not unwrap"); return}
        
        self.title = title
        self.year = year
        self.rating = rating
        self.releaseDate = released
        self.genre = genre
        self.director = director
        self.writer = writer
        self.actors = actors
        self.plot = plot
        self.posterUrl = posterUrl
    }
}





