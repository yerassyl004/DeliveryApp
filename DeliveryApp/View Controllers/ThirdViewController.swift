//
//  ThirdViewController.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 20.10.2023.
//

import UIKit


class ThirdViewController: UIViewController {
    
    func didOrederButtonPressedCell(_ cell: BasketTableViewCell) {

        if tableView.indexPath(for: cell) != nil {
            let destinationViewController = OrderViewController()
            navigationController?.pushViewController(destinationViewController, animated: true)
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateData()
        tableView.reloadData()
    }
    
    func updateData() {
        if likedList.isEmpty {
            setEmptyBackgroundView()
        }
    }
    
    func setEmptyBackgroundView() {
        
        let emptyLabel = UILabel()
        emptyLabel.text = "Your favorite foods is empty"
        emptyLabel.textAlignment = .center
        emptyLabel.textColor = .gray
        
        tableView.backgroundView = emptyLabel
        tableView.separatorStyle = .none
    }
}

extension ThirdViewController: UITableViewDelegate, UITableViewDataSource, LikedTableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return likedList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LikedTableViewCell
        cell.likedView.image = UIImage(named: likedList[indexPath.row].image)
        cell.likedNameLabel.text = likedList[indexPath.row].name
        cell.likedPriceLabel.text = likedList[indexPath.row].price
        
        print(likedList[indexPath.row].name)
        
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let orderVC = storyboard.instantiateViewController(withIdentifier: "OrderViewController") as! OrderViewController
        
        orderVC.name = likedList[indexPath.row].name
        orderVC.image = likedList[indexPath.row].name
        orderVC.price = likedList[indexPath.row].price
        
        navigationController?.pushViewController(orderVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath:
                   IndexPath) {
        likedList.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .left)
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let basket = likedList.remove(at: sourceIndexPath.row)
        likedList.insert(basket, at: destinationIndexPath.row)
    }
    
    
    func likeButtonPressed() {
        
        let indexPath = IndexPath(row: 0, section: 0)
        self.tableView.reloadRows(at: [indexPath], with: .automatic)
        print(data[indexPath.row].name)
        
        if let cell = tableView.cellForRow(at: indexPath) as? LikedTableViewCell {
            print(data[indexPath.row].name)
        }
        
        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let orderVC = storyboard.instantiateViewController(withIdentifier: "OrderViewController") as! OrderViewController
//        
//        basketList.append(Data(name: likedList[indexPath?.row ?? 0].name,
//                               image: likedList[indexPath?.row ?? 0].name,
//                               price: likedList[indexPath?.row ?? 0].price))
        
//        orderVC.name = likedList[indexPath?.row ?? 0].name
//        orderVC.image = likedList[indexPath?.row ?? 0].name
//        orderVC.price = likedList[indexPath?.row ?? 0].price
        
        
        
        
        
//        navigationController?.pushViewController(orderVC, animated: true)
        print("Pressed")
        
    }
}
