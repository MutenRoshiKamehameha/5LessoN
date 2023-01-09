//
//  JokeModel.swift
//  5LessoN
//
//  Created by Байгелди Акылбек уулу on 5/1/23.
//

import Foundation

class JokeModel{
    
    
    
    private weak var controller:JokeController!
    
    private var networkManager = NetworkManager()
    
    init(controller: JokeController) {
        self.controller = controller
    }
    
    
    
    
    public func getJoke(){
        networkManager.getJoke { Joke in
            self.controller.joke = Joke
        }
    }
    
}
