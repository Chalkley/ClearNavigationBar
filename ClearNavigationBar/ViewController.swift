//
//  ViewController.swift
//  ClearNavigationBar
//
//  Created by Jason Chalkley on 11/12/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let rightBtn = UIBarButtonItem(title: "Add", style: .done, target: self, action: #selector(ViewController.btnTapped))
        rightBtn.tintColor = .white
        self.navigationItem.rightBarButtonItem = rightBtn
        
        //Mark: Set view1 navigation bar to clear
        if let navController = navigationController {
            System.clearNavigationBar(forBar: navController.navigationBar)
            navController.view.backgroundColor = .clear 
        }
    }

    @objc func btnTapped() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let navController = UINavigationController(rootViewController: secondVC)
        self.navigationController?.present(navController, animated: true)
        print("✅ Right nav btn tapped, new screen presented.")
    
    }

}

