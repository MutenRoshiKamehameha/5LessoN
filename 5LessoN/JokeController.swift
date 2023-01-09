//
//  JokeController.swift
//  5LessoN
//
//  Created by Байгелди Акылбек уулу on 5/1/23.
//

import Foundation

class JokeController{
    
    var joke:Joke? = nil
    
    private weak var view:ViewController!
    
    private var model:JokeModel!
    
    
    init(view: ViewController) {
        self.view = view
        self.model = JokeModel(controller:self)
    }
    
    
    public func getJOKE(){
        model?.getJoke()
        view.setJokesSetup()
    }
}
