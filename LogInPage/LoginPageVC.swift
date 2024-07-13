//
//  LoginPageVC.swift
//  LogInPage
//
//  Created by Luka Khomeriki on 12.07.24.
//

import UIKit
import SwiftUI

class LoginPageVC: UIViewController {
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 50
        stackView.distribution = UIStackView.Distribution.fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Name"
        textField.borderStyle = .roundedRect
//        textField.heightAnchor.constraint(equalToConstant: 51).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var PassTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
//        textField.heightAnchor.constraint(equalToConstant: 51).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
//        button.heightAnchor.constraint(equalToConstant: 51).isActive = true
        button.setTitle("login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(PassTextField)
        stackView.addArrangedSubview(loginButton)
        
//        stackView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor,constant: 200).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 24).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
//        stackView.heightAnchor.constraint(equalTo: view.heightAnchor,constant: 4).isActive = true
    }
    
    
}

struct LoginPageVCRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        LoginPageVC()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

struct LoginPageVC_Preview: PreviewProvider {
    static var previews: some View {
        LoginPageVCRepresentable()
    }
}
