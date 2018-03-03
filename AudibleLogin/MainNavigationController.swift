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
        return UserDefaults.standard.isLoggedIn()
    }
}




