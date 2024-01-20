//
//  FourthViewController.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 20.10.2023.
//

import UIKit

class FourthViewController: UIViewController {
    
    var nameTF: String?
    var cityTF: String?
    var streetHomeTF: String?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func editBtnPressed(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let editVC = storyboard.instantiateViewController(withIdentifier: "EditViewController") as! EditViewController
        navigationController?.pushViewController(editVC, animated: true)
    }
    
    @IBOutlet weak var addresLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension FourthViewController: MessagesDelegate {
    
    func setText(nameLabel: String) {
        self.nameLabel?.text = nameLabel
    }
    
    func setText(addresLabel: String) {
        self.addresLabel?.text = addresLabel
    }
}


