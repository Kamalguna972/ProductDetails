//
//  ViewController.swift
//  StyleUnic
//
//  Created by Ashok on 13/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var brandImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    func setUpUI(){
        self.view.overrideUserInterfaceStyle = .dark
        let placeholderText = "Enter Username"
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.lightGray
        ]
        userName.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: attributes)
        let placeholderText1 = "Enter Password"
        let attributes1: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.lightGray
        ]
        Password.attributedPlaceholder = NSAttributedString(string: placeholderText1, attributes: attributes1)
        
        userName.layer.cornerRadius = 5
        Password.layer.cornerRadius = 5
        loginBtn.layer.cornerRadius = 10
    }

    @IBAction func loginAction(_ sender: Any) {
        if userName.text == loginName.userName && Password.text == loginName.passWord{
            print("Success")
        }
        else{
            print("Failure")
        }
    }
    
}

