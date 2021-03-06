//
//  HomeController.swift
//  AudibleLogin
//
//  Created by Chase McElroy on 3/2/18.
//  Copyright © 2018 Chase McElroy. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "We're loggin in"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(handleSignOut))
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
    @objc func handleSignOut() {
        UserDefaults.standard.setIsLoggedIn(value: false)
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}
