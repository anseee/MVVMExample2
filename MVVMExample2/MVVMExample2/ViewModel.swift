//
//  ViewModel.swift
//  MVVMExample2
//
//  Created by 박성원 on 2017. 6. 26..
//  Copyright © 2017년 sungwon. All rights reserved.
//

import UIKit

class ViewModel: NSObject {

    @IBOutlet var moviesClient: MoviesClient!
    var movies: [NSDictionary]?
    
    func fetchMovies(completion: () -> ()) {
        moviesClient.fetchMovies { movies in
            self.movies = movies
        }
    }
    
    func numberOfItemsInSection(section :Int) -> Int {
        return self.movies?.count ?? 0
    }
    
    func titleForItemAtIndexPath(indexPath: IndexPath) -> String {
        return self.movies?[indexPath.row]["im:name.label"] as? String ?? ""
    }
    
}
