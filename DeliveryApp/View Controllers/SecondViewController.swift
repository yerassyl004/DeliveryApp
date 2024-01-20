//
//  SecondViewController.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 20.10.2023.
//

import UIKit
class SecondViewController: UIViewController {

    @IBOutlet weak var basketTableView: UITableView!
    
    let orderVC = OrderViewController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if basketArray.isEmpty {
            setEmptyBackgroundView()
        }
        
        basketTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        basketTableView.dataSource = self
        basketTableView.delegate = self
        
    }
    
    func setEmptyBackgroundView() {
        
        let emptyLabel = UILabel()
        emptyLabel.text = "Your Busket Is Empty"
        emptyLabel.textAlignment = .center
        emptyLabel.textColor = .gray
        
        basketTableView.backgroundView = emptyLabel
        basketTableView.separatorStyle = .none
    }
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basketArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BasketTableViewCell
    
        cell.basketImageView.image = UIImage(named: basketArray[indexPath.row])
        cell.basketNameLabel.text = basketArray[indexPath.row]
        cell.basketPriceLabel.text = basketPrice[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let orderVC = storyboard.instantiateViewController(withIdentifier: "OrderViewController") as! OrderViewController
        let dataToSend = images[indexPath.row]
        orderText.append(dataToSend)
        orderPrices.append(prices[indexPath.row])
        
        orderVC.name = basketArray[indexPath.row]
        orderVC.image = basketArray[indexPath.row]
        orderVC.price = basketPrice[indexPath.row]
        
        navigationController?.pushViewController(orderVC, animated: true)

    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath:
                   IndexPath) {
        basketArray.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .left)
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let basket = basketArray.remove(at: sourceIndexPath.row)
        basketArray.insert(basket, at: destinationIndexPath.row)
    }
    
    
}


