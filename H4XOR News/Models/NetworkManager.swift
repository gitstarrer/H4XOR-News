//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Himanshu Gupta on 21/06/20.
//  Copyright © 2020 mine. All rights reserved.
//

import Foundation

class NetworkManager : ObservableObject {
    
    @Published var posts = [Post]() //data avaiable to others who request for it (like a subscription); updates the listener when there is a change
    
    func fetchData() {
      if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
        let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                           let results =  try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        }
                        catch{
                         print("error")
                        }
                    }
                }
            }
            task.resume()
        }
        
    }
}
