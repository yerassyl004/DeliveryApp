//
//  LikedTableViewCell.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 20.10.2023.
//

import UIKit

protocol LikedTableViewDelegate: AnyObject {
    func likeButtonPressed()
}

class LikedTableViewCell: UITableViewCell {
    
    weak var delegate: LikedTableViewDelegate?

    @IBOutlet weak var likedView: UIImageView!
    
    
    @IBAction func disLikeButtonPressed(_ sender: Any) {
        
    }
    @IBOutlet weak var likedPriceLabel: UILabel!
    @IBOutlet weak var likedNameLabel: UILabel!
    
    @IBAction func likeButtonPressed(_ sender: Any) {
        
        delegate?.likeButtonPressed()
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
