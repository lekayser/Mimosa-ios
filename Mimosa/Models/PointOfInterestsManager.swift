//
//  PointOfInterestsManager.swift
//  Mimosa
//
//  Created by カブラン on 2018/05/10.
//  Copyright © 2018年 JnN. All rights reserved.
//

import Foundation

class PointOfInterestsManager {

    var pointOfInterests:[PointOfInterest]
    static let sharedInstance = PointOfInterestsManager()

    init() {
        // perform some initialization here
        self.pointOfInterests = [PointOfInterest]()
        initFakes()
    }
    
    func initFakes()
    {
        let newPoIAsobi = PointOfInterest(description:"Pottery", picture:"picture 1", category:"asobi")
        let newPoITaberu = PointOfInterest(description:"Food", picture:"picture 2", category:"taberu")
        let newPoIShopping = PointOfInterest(description:"Shop", picture:"picture 3", category:"shopping")
        let newPoIBunka = PointOfInterest(description:"Jinja", picture:"picture 4", category:"bunka")
        
        self.pointOfInterests.append(newPoIAsobi)
        self.pointOfInterests.append(newPoITaberu)
        self.pointOfInterests.append(newPoIShopping)
        self.pointOfInterests.append(newPoIBunka)

    }

    
    func getAllPointOfInterests()->[PointOfInterest]
    {
        return self.pointOfInterests
    }
    
    func getAllPointOfInterestsOfCategory(category:String)->[PointOfInterest]
    {
        var filteredPointOfInterest = [PointOfInterest]()
        
        for pOi in self.pointOfInterests
        {
            if(pOi.category == category)
            {
                filteredPointOfInterest.append(pOi)
            }
        }
        
        return filteredPointOfInterest
        
    }
}
