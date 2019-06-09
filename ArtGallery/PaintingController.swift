//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Jordan Spell on 6/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    init(){
        loadPaintingsFromAssests()
    }
    
    func loadPaintingsFromAssests(){
        for imageIndex in 1...12 {
            let imageName = "Image\(imageIndex)"
            
            guard let assetImage = UIImage(named: imageName) else { continue }
            
            paintings.append(Painting(image: assetImage))
        }
    }
    
    func toggleIsLiked(for painting: Painting){
        painting.isLiked = !painting.isLiked
    }
}
