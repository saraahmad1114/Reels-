//
//  APIClient.swift
//  Reels
//
//  Created by Sara Ahmad on 4/13/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import Foundation

struct APIClient{
    
    //1. function for the API call for a search bar
    func getMovieInformation (searchText: String, pageNum: Int, completion:@escaping(Array<Any>)->()) throws {
        var jsonArray = Array<Any>()
        let newSearchText = searchText.replacingOccurrences(of: " ", with: "+")
        let url = "http://www.omdbapi.com/?apikey=\(Secrets.movieApiKey)&s=\(newSearchText)&page=\(pageNum)"
        let convertedUrl = URL(string: url)
        guard let unwrappedConvertedUrl = convertedUrl else{ print("convertedUrl did not unwrap"); return}
        let request = URLRequest(url: unwrappedConvertedUrl)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let unwrappedData = data else {print("unwrappedData did not unwrap"); return}
            do{
                let json = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String: Any]
                guard let searchValueArray = json["Search"] as? Array<Any> else{print("searchValueArray did not unwrap"); return}
                jsonArray = searchValueArray
                completion(jsonArray)
            }
            catch let error{
                print("Error message is: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
    
    //2. Function for the API call passing movie Id to get further information about specific title
    func getMovieDetailedInformation (movieId: String, completion:@escaping([String: Any])->()) throws {
        var jsonDictionary = [String: Any]()
        let url = "http://www.omdbapi.com/?apikey=\(Secrets.movieApiKey)&i=\(movieId)"
        let convertedUrl = URL(string: url)
        guard let unwrappedConvertedUrl = convertedUrl else{ print("convertedUrl did not unwrap"); return}
        let request = URLRequest(url: unwrappedConvertedUrl)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let unwrappedData = data else {print("unwrappedData did not unwrap"); return}
            do{
                let json = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String: Any]
                jsonDictionary = json
                completion(jsonDictionary)
            }
            catch let error{
                print("Error message is: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
    
    //3. Updating an imageview

    
    
    //4. pagination function
    func incrementNum (pageNum: Int) -> Int {
        pageNum = pageNum + 1
        return pageNum
    }
}
