//
//  BasketTableViewCell.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 21.10.2023.
//

import UIKit

class BasketTableViewCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var basketImageView: UIImageView!
    
    @IBOutlet weak var basketPriceLabel: UILabel!
    
    @IBOutlet weak var basketNameLabel: UILabel!
    
    
    
}
