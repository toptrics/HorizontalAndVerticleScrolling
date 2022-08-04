//
//  ViewController.swift
//  HorizontalAndVerticleScrolling
//
//  Created by Sunil Sharma on 03/08/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableViewCell")
        tableView.register(UINib(nibName: "MarketTableViewCell", bundle: nil), forCellReuseIdentifier: "MarketTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension ViewController :UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath)
        return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MarketTableViewCell", for: indexPath)
            return cell
        }
    }
   
    
}

