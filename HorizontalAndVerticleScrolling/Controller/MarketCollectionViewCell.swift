//
//  MarketCollectionViewCell.swift
//  HorizontalAndVerticleScrolling
//
//  Created by Sunil Sharma on 04/08/22.
//

import UIKit

class MarketCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var niftyValue: UILabel!
    @IBOutlet weak var niftyChange: UILabel!
    @IBOutlet weak var advanceForNifty :UILabel!
    @IBOutlet weak var declineForNifty :UILabel!
    
    @IBOutlet weak var sunsexValue: UILabel!
    @IBOutlet weak var sunsexChange :UILabel!
    @IBOutlet weak var declineForSunsex:UILabel!
    @IBOutlet weak var advanceForSunsex :UILabel!
    
    @IBOutlet weak var niftyProgressView: UIProgressView!
    
    @IBOutlet weak var sunsexProgressView: UIProgressView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

}
