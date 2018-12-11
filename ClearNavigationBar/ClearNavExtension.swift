//
//  ClearNavExtension.swift
//  ClearNavigationBar
//
//  Created by Jason Chalkley on 11/12/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import Foundation
import UIKit

struct System {
    static func clearNavigationBar(forBar navBar: UINavigationBar) {
        navBar.setBackgroundImage(UIImage(), for: .default)
        navBar.shadowImage = UIImage()
        navBar.isTranslucent = true
        
    }
}


//Set Nav bar to clear (call in View controller)
//if let navController = navigationController {
//    System.clearNavigationBar(forBar: navController.navigationBar)
//    navController.view.backgroundColor = .clear
//}
