//
//  MoviesClient.swift
//  MVVMExample2
//
//  Created by 박성원 on 2017. 6. 26..
//  Copyright © 2017년 sungwon. All rights reserved.
//

import UIKit

class MoviesClient: NSObject {

    func fetchMovies(completion: @escaping (_ movie: [NSDictionary]?) -> ()) {
        let urlString = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
        let url = URL.init(string: urlString)
        let session = URLSession.init(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: url!, completionHandler: {(data, response, error) -> Void in
            if error != nil {
                completion(nil)
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                if let movies = json["feed.entry"] as? [NSDictionary] {
                    completion(movies)
                }
            } catch let error as NSError {
                print("Failed to load: \(error.localizedDescription)")
            }
        })
        
        task.resume()
    }
}
