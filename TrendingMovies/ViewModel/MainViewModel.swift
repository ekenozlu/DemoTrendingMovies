//
//  MainViewModel.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import Foundation

class MainViewModel {
    
    func numberOfSections() -> Int {
        2
    }
    
    func numberOfRows(in section: Int) -> Int {
        10
    }
    
    func getData() {
        APICaller.getTrendingMovies { result in
            switch result {
            case .success(let data):
                print("Count: \(data.totalResults)")
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
