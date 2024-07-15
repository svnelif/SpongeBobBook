//
//  SpongeBob.swift
//  SpongeBobBook
//
//  Created by Elif Ataseven  on 15.07.2024.
//

import Foundation
import UIKit

class SpongeBob {
    
    var name: String
    var job: String
    var image = UIImage()
    
    init(name: String, job: String, image: UIImage) {
        self.name = name
        self.job = job
        self.image = image
    }
}

