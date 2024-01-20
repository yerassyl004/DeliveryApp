//  OrderViewController.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 21.10.2023.
//

import UIKit

var orderText = [String]()
var orderPrices = [Int]()


class OrderViewController: UIViewController {
    
    var name = String()
    var image = String()
    var price = String()
    
    var currentPrice = String()
    
    @IBOutlet weak var stepperButton: UIStepper!
    
    @IBOutlet weak var orderImageView: UIImageView!
    
    @IBOutlet weak var orderNameLabel: UILabel!
    
    @IBOutlet weak var orderPriceLabel: UILabel!
    
    @IBAction func orderBtnPressed(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let payVC = storyboard.instantiateViewController(withIdentifier: "PayViewController") as! PayViewController
        present(payVC, animated: true)
        
        
    }
    
    @IBOutlet weak var stepperValue: UILabel!
    
    var lastNum: Int = 0
    
    @IBAction func tepper(_ sender: UIStepper) {
        let value = sender.value
        print(currentPrice)
        print(lastNum)
        
        lastNum = (Int(price) ?? -1) * Int(value)
        orderPriceLabel.text? = "\(String(lastNum))₸"
        stepperValue.text = Int(value).description
        
        print(lastNum)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        orderNameLabel.text = name
        
        orderImageView.image = UIImage(named: image)
        orderPriceLabel.text = "\(price)₸"
        
        currentPrice = price
        
        
        
        print(name)
        
    }
    
    func configure(select: Data) {
        name = select.name
        price = select.price
        image = select.name
    }
}


