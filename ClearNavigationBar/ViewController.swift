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
        self.navigationItem.rightBarButtonItem = rightBtn
    }

    @objc func btnTapped() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let addNutritionNoteVC = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let navController = UINavigationController(rootViewController: addNutritionNoteVC)
        self.navigationController?.pushViewController(navController, animated: true)
        print("✅ Right nav btn tapped, new screen presented.")
    
    }

}

