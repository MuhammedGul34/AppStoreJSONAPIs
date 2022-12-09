//
//  Service.swift
//  AppStoreJSONApis
//
//  Created by Muhammed Gül on 7.12.2022.
//

import Foundation

class Service {
    
    static let shared = Service() // singleton
    
    func fetchApps(searchTerm: String, completion: @escaping ([Result], Error?) -> ()) {
        print("Fetching itunes apps from Service layer")
        
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
        guard let url = URL(string: urlString) else { return }
        
        // fetch data from internet
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                print("Failed to fetch apps:", err)
                completion([], nil)
                return
            }
            
            // success
            guard let data = data else { return }
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                
                completion(searchResult.results, nil)
                
            } catch let jsonErr {
                print("Failed to decode json:", jsonErr)
                completion([], jsonErr)
            }
            
            }.resume() // fires off the request
    }
    
    func fetchGames(completion: @escaping (AppGroup?, Error?) -> ()) {
        guard let url = URL(string: "https://rss.applemarketingtools.com/api/v2/us/apps/top-free/50/apps.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
//            print(String(data: data!, encoding: .utf8))
            
            if let err = err {
                completion(nil, err)
                return
            }
            
            do {
                let appGroup = try JSONDecoder().decode(AppGroup.self, from: data!)
                // successes
                completion(appGroup, nil)
            } catch {
                completion(nil, error)
//                print("Failed to decode:", error)
            }
            
            
        }.resume() // this will fire your request
    }
    
}
