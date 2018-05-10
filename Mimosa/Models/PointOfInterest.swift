//
//  PointOfInterest.swift
//  Mimosa
//
//  Created by カブラン on 2018/05/10.
//  Copyright © 2018年 JnN. All rights reserved.
//

import Foundation

class PointOfInterest {
    
    var description:String
    var picture:String
    var category:String
    
    init(description:String) {
        // perform some initialization here
        self.description = description
        self.picture = "some stuff"
        self.category = "asobi"
    }
    
    init(description:String, picture:String, category:String) {
        // perform some initialization here
        self.description = description
        self.picture = picture
        self.category = category
    }
    
}
