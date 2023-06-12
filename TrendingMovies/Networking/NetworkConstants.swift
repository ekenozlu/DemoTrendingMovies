//
//  NetworkConstants.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import Foundation

class NetworkConstants {
    public static var shared: NetworkConstants = NetworkConstants()
    
    private init() {
        //Singleton
    }
    
    public var apiKey: String {
        get {
            return "188b7cc2a027cbbf38915b398655b0b8"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress : String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}


// https://api.themoviedb.org/3/trending/movie/week?api_key=188b7cc2a027cbbf38915b398655b0b8
