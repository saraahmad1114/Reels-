//
//  APIClient.swift
//  Reels
//
//  Created by Sara Ahmad on 4/13/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import Foundation

class APIClient{
    
    //1. function for the API call for a search bar
    class func getMovieInformation (searchText: String, pageNum: Int, completion:@escaping([BriefMovie])->()) throws {
        
      let newSearchText = searchText.replacingOccurrences(of: " ", with: "+")
      let url = "https://www.omdbapi.com/?apikey=\(Secrets.movieApiKey)&s=\(newSearchText)&page=\(pageNum)"
      let convertedUrl = URL(string: url)
      guard let unwrappedConvertedUrl = convertedUrl else{ print("convertedUrl did not unwrap"); return}
      let request = URLRequest(url: unwrappedConvertedUrl)
      let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
          guard let unwrappedData = data else {print("unwrappedData did not unwrap"); return}
            do{
                let root = try JSONDecoder().decode(Root.self, from: unwrappedData)
                let briefMovieData = root.Search
                completion(briefMovieData)
            } 
            catch let error{
                print("Error message is: \(error.localizedDescription)")
            }
        }
        task.resume()
    }

    
    //2. Function for the API call passing movie Id to get further information about specific title
    class func getElaborateMovieDetails (movieId: String, completion:@escaping(ElaborateMovie)->()) throws{
        let url = "https://www.omdbapi.com/?apikey=\(Secrets.movieApiKey)&i=\(movieId)"
        let convertedUrl = URL(string: url)
        guard let unwrappedConvertedUrl = convertedUrl else {print("unwrappedConvertedUrl did not unwrap"); return}
        let request = URLRequest(url: unwrappedConvertedUrl)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let unwrappedData = data else {print("unwrappedData did not unwrap"); return}
            do {
                var elaborateMovieDictionary = try JSONDecoder().decode(ElaborateMovie.self, from: unwrappedData) 
                completion(elaborateMovieDictionary)
            }
            catch let error {
                print("Error message is: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
    
    //3. Updating an imageview
    
    
    

}
