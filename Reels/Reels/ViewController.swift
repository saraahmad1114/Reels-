//
//  ViewController.swift
//  Reels
//
//  Created by Sara Ahmad on 3/20/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    var pageNum = 1
    var movieArray = [BriefMovie]()
    @IBOutlet weak var movieSeachBar: UISearchBar!
    
    //DEFAULT VALUES TO HIT THE MOVIE COLLECTIONVIEW WITH
    let movieSearchTerms = ["love", "romance", "mystery", "thriller", "musical", "family", "horror", "sci-fi", "Batman", "Star Wars", "Superman"]
    var randomNumber = 0
    
    //1. Add a search bar - DONE
    
    //2. Add a collection view - WILL BE DOING NEXT
    
    //3. Inside the cell of the collection view - add a label and an imageview - WILL BE DOING NEXT

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.randomNumber = Int(arc4random_uniform(UInt32(self.movieSearchTerms.count)))
//        do {
//            try APIClient.getMovieInformation(searchText: self.movieSearchTerms[randomNumber], pageNum: 1, completion: { (briefMovieArray) in
//                    self.movieArray.append(contentsOf: briefMovieArray)
//                    print("***********************************")
//                    print(self.movieArray)
//                    print("***********************************")
//            })
//        } catch let error{
//            print("error is: \(error.localizedDescription)")
//        }
        
//        do {
//            try APIClient.getElaborateMovieDetails(movieId: "tt0414993", completion: { (elaborateMovieDictionary) in
//                print("*********************************")
//                dump(elaborateMovieDictionary)
//                print("*********************************")
//            })
//        } catch let error{
//            print("error is: \(error.localizedDescription)")
//        }
        
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.movieArray.removeAll()
        
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }

}

