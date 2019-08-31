//
//  WolrdCup.swift
//  CampeoesDaCopa
//
//  Created by Alessandro on 28/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import Foundation

struct Game: Codable {
    let home:String
    let away:String
    let score:String
    let date:String
}

struct Match: Codable {
    let stage:String
    let games:[Game]
}

struct WolrdCupEntity: Codable {
    
    let year:Int
    let country:String
    let winner:String
    let vice:String
    let winnerScore:String
    let viceScore:String
    let matches:[Match]

}
