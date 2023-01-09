//
//  NetworkManager.swift
//  5LessoN
//
//  Created by Байгелди Акылбек уулу on 5/1/23.
//

import Foundation
import Foundation

class NetworkManager {
    
    func getJoke(completion: @escaping (Joke) -> ()) {
        let url = URL(string: "https://official-joke-api.appspot.com/random_joke")
        
        URLSession.shared.dataTask(with: url!) {(data, response, error) in
        
            if error == nil && data != nil {
                do {
                    let joke = try JSONDecoder().decode(Joke.self, from: data!)
                    
                    DispatchQueue.main.async {
                        completion(joke)
                    }
                    
                } catch {
                    print("error")
                }
                
        }
        
        }.resume()
    }
}
