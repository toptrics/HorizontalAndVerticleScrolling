//
//  MarketModel.swift
//  HorizontalAndVerticleScrolling
//
//  Created by Sunil Sharma on 04/08/22.
//

import Foundation
struct MarketModel {
    
    let niftyValue : Int
    let niftyChange : Double
    let niftyChangeInPercentage : Double
    let niftyAdvance : Int
    let niftyDecline : Int
    
    let sunsexValue : Int
    let sunsexChange : Double
    let sunsexChangeInPercentage : Double
    let sunsexAdvance : Int
    let sunsexDecline : Int
    
}
struct MarketArray{
        let arr = [MarketModel(niftyValue: 50000, niftyChange: -52, niftyChangeInPercentage: -0.05, niftyAdvance: 52, niftyDecline: 10, sunsexValue: 12300, sunsexChange: 23, sunsexChangeInPercentage: 0.02, sunsexAdvance: 23, sunsexDecline: 12),
                   MarketModel(niftyValue: 12000, niftyChange: 344, niftyChangeInPercentage: 0.08, niftyAdvance: 32, niftyDecline: 35, sunsexValue: 134000, sunsexChange: -234, sunsexChangeInPercentage: -0.06, sunsexAdvance: 45, sunsexDecline: 30)]
    }
