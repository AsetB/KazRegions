//
//  RegionStruct.swift
//  KazRegions
//
//  Created by Aset Bakirov on 20.10.2023.
//

import Foundation
import SwiftyJSON

struct RegionStruct {
    var name = ""
    var mainCity = ""
    var population = ""
    var emblem = ""
    var photo = ""
    
    init(json: JSON) {
        if let item = json["name"].string {
            name = item
        }
        if let item = json["mainCity"].string {
            mainCity = item
        }
        if let item = json["population"].string {
            population = item
        }
        if let item = json["emblem"].string {
            emblem = item
        }
        if let item = json["photo"].string {
            photo = item
        }
    }
}
