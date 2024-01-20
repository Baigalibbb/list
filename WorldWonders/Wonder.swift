//
//  Wonder.swift
//  WorldWonders
//
//  Created by Tenizbayev Bolat on 05.01.2024.
//

import Foundation
import SwiftyJSON

struct WorldWonders{
    var name = ""
    var region = ""
    var location = ""
    var flag0 = ""
    var picture0 = ""
    
    init(json: JSON){
        if let item = json["name"].string{
            name = item
        }
        if let item = json["region"].string{
            region = item
        }
        if let item = json["location"].string{
            location = item
        }
        if let item = json["flag0"].string{
            flag0 = item
        }
        if let item = json["picture"].string{
            picture0 = item
        }
    }
}
