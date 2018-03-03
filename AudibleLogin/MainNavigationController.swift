//
//  MainNavigationController.swift
//  AudibleLogin
//
//  Created by Chase McElroy on 3/2/18.
//  Copyright © 2018 Chase McElroy. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if isLoggedIn() {
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    @objc func showLoginController() {
        let loginController = LoginController()
        present(loginController
            , animated: true, completion: {
                print(431)
        })
        
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return false
    }
}



class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "We're loggin in"
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
