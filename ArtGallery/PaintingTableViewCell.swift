//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jordan Spell on 6/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var isLikedButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func isLikedButtonTapped(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    func updateViews() {
        guard let unwrappedPainting = painting else { return }
        
        ImageView.image = unwrappedPainting.image
        
        let title = unwrappedPainting.isLiked ? "Liked" : "Unlike"
        isLikedButton.setTitle(title, for: .normal)
    }
    
}
