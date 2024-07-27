//
//  LoginViewController.swift
//  StyleUnic
//
//  Created by Ashok on 27/07/24.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var outerView: UIView!
    @IBOutlet weak var appImge: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var PassWordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var backImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setupTextField(PassWordField, placeholder: "Password", imageName: "lock")
        setupTextField(userNameField, placeholder: "Username", imageName: "person")
    }
    func setUpUI() {
        self.navigationItem.hidesBackButton = true
        self.view.backgroundColor = .black
        outerView.transform = CGAffineTransform(scaleX: 1.0, y: 0.0)
        outerView.roundTopCorners(radius: 40)
        UIView.animate(withDuration: 0.5,
                       delay: 0.5,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.5,
                       options: .curveEaseOut,
                       animations: {
            self.outerView.transform = CGAffineTransform.identity
        }, completion: nil)
        titleLable.font = FontManager.poppins(.semibold, size: 25)
        loginBtn.titleLabel?.font = FontManager.poppins(.semibold, size: 20)
        loginBtn.layer.cornerRadius = loginBtn.frame.height/2
        backImg.layer.cornerRadius = backImg.frame.height / 2
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleProfileImageTapped))
        backImg.addGestureRecognizer(tapGesture)
        backImg.isUserInteractionEnabled = true
        
    }
    @objc private func handleProfileImageTapped(_ gesture: UITapGestureRecognizer) {
        self.dismiss(animated: true)
    }
    func setupTextField(_ textField: UITextField, placeholder: String, imageName: String) {
            let imageView = UIImageView(image: UIImage(systemName: imageName))
            imageView.contentMode = .scaleAspectFit
            imageView.tintColor = .black
            imageView.frame = CGRect(x: 5, y: 0, width: 24, height: 24)
        
            let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 24))
            containerView.addSubview(imageView)
            imageView.center = containerView.center
            
            textField.leftView = containerView
            textField.leftViewMode = .always
            textField.borderStyle = .roundedRect
            textField.layer.cornerRadius = 15
            textField.layer.borderColor = UIColor.gray.cgColor
            textField.placeholder = placeholder
            textField.font = FontManager.poppins(.semibold, size: 15)
        }
    @IBAction func loginAct(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Product", bundle: nil)
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "ProductViewController") as? ProductViewController
        self.navigationController?.pushViewController(registerViewController!, animated: true)
    }
}

extension UIView {
    func roundTopCorners(radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds,
                                byRoundingCorners: [.topLeft, .topRight],
                                cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
