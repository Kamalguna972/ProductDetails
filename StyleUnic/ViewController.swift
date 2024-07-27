//
//  ViewController.swift
//  StyleUnic
//
//  Created by Ashok on 13/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    func setUpUI() {
        self.view.overrideUserInterfaceStyle = .dark
        loginBtn.titleLabel?.font = FontManager.poppins(.semibold, size: 20)
        registerBtn.titleLabel?.font = FontManager.poppins(.semibold, size: 20)
        loginBtn.layer.cornerRadius = loginBtn.frame.height / 2
        registerBtn.layer.cornerRadius = registerBtn.frame.height / 2
    }
    @IBAction func loginAct(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
        self.navigationController?.pushViewController(loginViewController!, animated: true)
    }
    @IBAction func registerAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Register", bundle: nil)
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController
        self.navigationController?.pushViewController(registerViewController!, animated: true)
    }
    
}
