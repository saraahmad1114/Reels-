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
    
    //1. Add a search bar
    
    //2. Add a collection view
    
    //3. Inside the cell of the collection view - add a label and an imageview 

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        do {
//            try APIClient.getMovieInformation(searchText: "The Fountain", pageNum: 1, completion: { (briefMovieArray) in
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



}

