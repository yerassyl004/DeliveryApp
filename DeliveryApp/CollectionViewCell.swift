//
//  CollectionViewCell.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 20.10.2023.
//

import UIKit

protocol AddToCardDelegate: AnyObject {
    func addToCard(name: String)
}

protocol CollectionViewDelegate: AnyObject {
    func addButtonPressed(name: String, price: String, image: String)
}
class CollectionViewCell: UICollectionViewCell {
    
    weak var delegate: CollectionViewDelegate?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var likedButton: UIButton!
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                addButton.backgroundColor = UIColor.systemBlue
                addButton.setTitleColor(UIColor.white, for: .normal)
            } else {
                addButton.backgroundColor = UIColor.white
                addButton.setTitleColor(UIColor.systemBlue, for: .normal)
            }
        }
    }
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    @IBAction func likedButtonPressed(_ sender: Any) {
        
        if !(likedList.contains(where: {($0.name == nameLabel.text!) && ($0.price == priceLabel.text)})) {
            likedList.append(Data(name: nameLabel.text!, image: nameLabel.text!, price: priceLabel.text!))
        } else {
            print("Added")
        }
    }
    
    func configure(data: Data) {
        nameLabel.text = data.name
        priceLabel.text = data.price
        imageView.image = UIImage(named: data.name)
        
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        
        if !basketArray.contains(nameLabel.text!) {
            
            basketArray.append(nameLabel.text!)
            basketPrice.append(String(priceLabel.text!))
        } else {
            print("Added")
        }
        print(basketArray.count)
    }
    
    func configure(basket: Data) {
        
        BasketList.basketData.append(Data(name: basket.name, image: basket.name, price: basket.price))
        
    }
}
