//
//  MoviesClient.swift
//  MVVMExample2
//
//  Created by 박성원 on 2017. 6. 26..
//  Copyright © 2017년 sungwon. All rights reserved.
//

import UIKit

class MoviesClient: NSObject {

    func fetchMovies(completion: (_ movie: [NSDictionary]) -> ()) {
        let urlString = ""
        let url = URL.init(string: urlString)
        let session = URLSession.init(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: url!) { (data, response, error) -> Void in
            
        }
    }
}
