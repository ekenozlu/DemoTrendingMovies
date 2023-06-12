//
//  APICaller.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

public class APICaller{
    static func getTrendingMovies(completionHandler: @escaping (_ result: Result<MovieModel,NetworkError>) -> Void) {
        let urlString = NetworkConstants.shared.serverAddress + "trending/movie/week?api_key=" + NetworkConstants.shared.apiKey
        
        guard let url = URL(string: urlString) else {
            completionHandler(.failure(.urlError))
            return
        }
        
        URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
            if error == nil, let data = dataResponse, let resultData = try? JSONDecoder().decode(MovieModel.self, from: data) {
                completionHandler(.success(resultData))
            }
            else {
                completionHandler(.failure(.canNotParseData))
            }
        }.resume()
        
    }
}
