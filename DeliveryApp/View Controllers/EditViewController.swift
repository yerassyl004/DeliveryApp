//
//  EditViewController.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 21.10.2023.
//

import UIKit

protocol MessagesDelegate: AnyObject {
    
    func setText(nameLabel: String)
    
    func setText(addresLabel: String)
}

class EditViewController: UIViewController {
    
    @IBAction func submitBtnPressed(_ sender: Any) {
        
        let VC = FourthViewController()
        
        VC.setText(nameLabel: nameTF.text ?? "")
        VC.setText(addresLabel: "\(String(describing: cityTF.text)) \(String(describing: streetHomeTF.text))")
        navigationController?.popViewController(animated: true)
        
    }
    weak var delegate: MessagesDelegate?

    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var phoneTF: UITextField!
    
    @IBOutlet weak var cityTF: UITextField!
    
    @IBOutlet weak var streetHomeTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
    }
}


