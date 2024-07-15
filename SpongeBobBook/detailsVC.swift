//
//  detailsVC.swift
//  SpongeBobBook
//
//  Created by Elif Ataseven  on 15.07.2024.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!   
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedBob : SpongeBob?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedBob?.name
        jobLabel.text = selectedBob?.job
        imageView.image = selectedBob?.image
    }

}
