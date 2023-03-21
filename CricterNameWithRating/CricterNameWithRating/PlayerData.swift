//
//  PlayerData.swift
//  CricterNameWithRating
//
//  Created by Rajeev on 25/02/23.
//

import Foundation

class PlayerData
{
    var playerName:String
    var country:String
    var rating:Int32
    var plyerImage:String
    
 
     init(pName:String,cntName:String,rplayer:Int32,photoPlayer:String)
    {
        playerName = pName
        country = cntName
        rating = rplayer
        plyerImage = photoPlayer
        
        
        
    }
}
