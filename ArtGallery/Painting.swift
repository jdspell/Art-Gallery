//
//  Painting.swift
//  ArtGallery
//
//  Created by Jordan Spell on 6/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage!
    var isLiked: Bool
    
    init(image: UIImage, liked: Bool = false) {
        self.image = image
        self.isLiked = liked
    }
}
