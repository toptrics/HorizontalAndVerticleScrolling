//
//  MarketTableViewCell.swift
//  HorizontalAndVerticleScrolling
//
//  Created by Sunil Sharma on 03/08/22.
//

import UIKit

class MarketTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let marketArray = MarketArray().arr
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib(nibName: "MarketCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MarketCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
extension MarketTableViewCell : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return marketArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MarketCollectionViewCell", for: indexPath) as! MarketCollectionViewCell
        
        //MARK: Cell Change Pattern
        
        cell.niftyValue.text = "\(marketArray[indexPath.row].niftyValue)"
        
        if(marketArray[indexPath.row].niftyChange < 0){
            cell.niftyChange.text = "↓ \(marketArray[indexPath.row].niftyChange)(\(marketArray[indexPath.row].niftyChangeInPercentage)%"
            
        }else{
            cell.niftyChange.text = "↓ \(marketArray[indexPath.row].niftyChange)(\(marketArray[indexPath.row].niftyChangeInPercentage)%"
        }
        cell.advanceForNifty.text = "\(marketArray[indexPath.row].niftyAdvance) Advance"
        cell.declineForNifty.text = "\(marketArray[indexPath.row].niftyDecline) Decline"
        cell.niftyProgressView.progress = Float(marketArray[indexPath.row].niftyAdvance)/( Float(marketArray[indexPath.row].niftyAdvance) + Float(marketArray[indexPath.row].niftyDecline))
        // Same Can be done for sunsex
        return cell
    }
   
   
}

