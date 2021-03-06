//
//  Movie.swift
//  Reels
//
//  Created by Sara Ahmad on 4/13/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import Foundation

class Root: Decodable{
    var Search: [BriefMovie]
}

struct BriefMovie: Decodable{
    private enum CodingKeys: String, CodingKey {
        case Title, Year, imdbID
        case type = "Type"
        case Poster
    }
    var Title: String?
    var Year: String?
    var imdbID: String?
    var type: String?
    var Poster: String?
}


class ElaborateMovie: Decodable{
    var Title: String?
    var Year: String?
    var Rated: String?
    var Released: String?
    var Runtime: String?
    var Genre: String?
    var Director: String?
    var Writer: String?
    var Actors: String?
    var Plot: String?
    var Awards: String?
    var Poster: String?
}






