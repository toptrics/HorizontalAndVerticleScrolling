//
//  NewsTableViewCell.swift
//  HorizontalAndVerticleScrolling
//
//  Created by Sunil Sharma on 03/08/22.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let newsArray = NewsArray()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib(nibName: "NewsCollectionViewCell", bundle: nil)    , forCellWithReuseIdentifier: "NewsCollectionViewCell")
       
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
extension NewsTableViewCell : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newsArray.arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCollectionViewCell", for: indexPath) as! NewsCollectionViewCell
        cell.newsImage.image = newsArray.arr[indexPath.row].image
        cell.newsLabel.text = newsArray.arr[indexPath.row].title
        return cell 
    }
    
    
}
