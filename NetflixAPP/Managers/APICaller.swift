//
//  APICaller.swift
//  NetflixAPP
//
//  Created by Денис Медведев on 01.09.2022.
//

import Foundation

struct Constants {
    static let API_KEY = "697d439ac993538da4e3e60b54e762cd"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }

            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                
            } catch {
                completion(.failure(APIError.failedTogetData))
            }
        }
        
        task.resume()
    }
}
