//
//  PayViewController.swift
//  DeliveryApp
//
//  Created by Ерасыл Еркин on 21.10.2023.
//

import UIKit

class PayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
//        
//        cardNumsText.delegate = self
        
    }
    
    @IBOutlet weak var monthYearText: UITextField!
    @IBOutlet weak var cardNumsText: UITextField!
    
    @IBOutlet weak var payImageView: UIImageView!
    
    
    @IBOutlet weak var CVVTextField: UITextField!
    
    @IBAction func payBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
//    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        let maxLength = 16
//        let currentString = (textField.text ?? "") as NSString
//        let newString = currentString.replacingCharacters(in: range, with: string)
//
//        return newString.count <= maxLength
//    }
//    
    
    
    
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        
//        let maxCharacterLimit = 6
//        
//        let currentText = cardNumsText.text ?? ""
//        let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
//
//        return newText.count <= maxCharacterLimit
//    }
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        let maxCharacterLimit = 50
//        let currentText = cardNumsText.text ?? ""
//        let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
//
//        if newText.count > maxCharacterLimit {
//            cardNumsText.shake()
//            return false
//        }
//
//        return true
//    }
}
