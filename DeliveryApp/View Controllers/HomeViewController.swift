//
//  ViewController.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 14.10.2023.
//

import UIKit

var images: [String] = ["Pizza1", "Pizza2", "Pizza3", "Pizza4","Pizza5", "Pizza6", "Pizza7", "Pizza8", "Pizza9", "Pizza10", "Pizza11", "Pizza12", "Pizza13", "Pizza14"]
var names: [String] = ["Pizza", "Pizza", "Pizza", "Pizza", "Pizza", "Pizza"]
var prices: [Int] = [1990, 2190, 2990, 1890, 1490, 2490, 2490, 2490, 2490, 2490, 2490, 2490, 2490, 2490]
var basketArray = [String]()
var basketPrice = [String]()

class HomeViewController: UIViewController {
    func addButtonPressed() {
        
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var rows = Sourse.makeRows()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rows.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.configure(data: rows[indexPath.row])
        cell.layer.cornerRadius = 15
        cell.backgroundColor = .lightGray
        cell.imageView.layer.cornerRadius = 15
        cell.addButton.layer.cornerRadius = 10
        cell.addButton.backgroundColor = .systemGray6
        
        if basketArray.contains(cell.nameLabel.text!) {
            
        }
        print(cell.nameLabel.text!)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let orderVC = storyboard.instantiateViewController(withIdentifier: "OrderViewController") as! OrderViewController
    
        orderVC.configure(select: rows[indexPath.row])
        
        print(orderVC.configure(select: rows[indexPath.row]))
        
        navigationController?.pushViewController(orderVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 180, height: 250)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) ->
        CGFloat {
        return 11
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 11, bottom: 10, right: 11)
    }
    
}
