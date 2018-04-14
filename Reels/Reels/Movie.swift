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





