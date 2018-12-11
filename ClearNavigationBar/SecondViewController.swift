//
//  SecondViewController.swift
//  ClearNavigationBar
//
//  Created by Jason Chalkley on 11/12/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let backBtn = UIBarButtonItem(title: "Back", style: .done, target: self, action: #selector(SecondViewController.btnTapped))
        backBtn.tintColor = .white
        self.navigationItem.leftBarButtonItem = backBtn
        
        //Mark: Set view2 navigation bar to clear
        if let navController = navigationController {
            System.clearNavigationBar(forBar: navController.navigationBar)
            navController.view.backgroundColor = .clear
        }
        
        
    }
    
    @objc func btnTapped() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let navController = UINavigationController(rootViewController: mainVC)
        self.navigationController?.present(navController, animated: true)
        print("✅ Left nav btn tapped, new screen presented.")
        
    }

}
