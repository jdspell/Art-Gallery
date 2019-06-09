//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Jordan Spell on 6/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
            as? PaintingTableViewCell else { return UITableViewCell() }
        
        let painting = paintingController.paintings[indexPath.row]
        
        cell.painting = painting
        cell.delegate = self
        
        return cell
    }
    


}

extension PaintingListViewController: PaintingTableViewCellDelegate {
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let index = tableView.indexPath(for: cell),
            let painting = cell.painting else { return }
        
        paintingController.toggleIsLiked(for: painting)
        
        tableView.reloadRows(at: [index], with: .right)
    }
    
    
}
