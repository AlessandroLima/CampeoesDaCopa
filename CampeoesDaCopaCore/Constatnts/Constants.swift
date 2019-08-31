//
//  Constants.swift
//  CampeoesDaCopa
//
//  Created by Alessandro on 28/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import Foundation

struct Constants{
    struct Repository{
        static let url = Bundle.main.url(forResource: "winners", withExtension: "json")!
    }
    struct Router{
        static  var winnersRouter:WinnersRouter?
    }
    
}
