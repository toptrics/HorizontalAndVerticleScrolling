//
//  NewsModel.swift
//  HorizontalAndVerticleScrolling
//
//  Created by Sunil Sharma on 04/08/22.
//

import Foundation
import UIKit

struct NewsModel{
    let image :UIImage
    let title : String
}
struct NewsArray{
    let arr = [NewsModel(image: UIImage(named: "ET")!, title: "The waiting of unprecedented  FII equity overflows to reverse wait could be long?"),
    NewsModel(image: UIImage(named: "6")!, title: "How a celebrity CEO's rule of fear helped bring down hot startup Zilingo")]
}

