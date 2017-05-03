//
//  AppDelegate.swift
//  TabBarControllerCancelSession
//
//  Created by Iggy on 5/2/17.
//  Copyright © 2017 iggym. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let arrayOfImages = [ "1", "2", "3", "4", "5", "6", "7"]
    let arrayOfTitles = [ "One", "Two", "Three", "Four", "Five", "Six", "Seven"]


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let tabBar = UITabBarController()
        tabBar.viewControllers = self.getArrayOfViewControllers()
        self.customiseTabItems(tabBar: tabBar.tabBar)
        // set tabBar as root
        self.window?.rootViewController = tabBar
        tabBar.moreNavigationController.topViewController?.view.reloadInputViews() //gets the icons to show in the more view controller
        self.window?.makeKeyAndVisible()

        
        return true
    }
    
    func getArrayOfViewControllers() -> [ViewController] {
        
        let vc1 = UIStoryboard.init(name: "1", bundle: Bundle.main).instantiateInitialViewController()
        let vc2 = UIStoryboard.init(name: "2", bundle: Bundle.main).instantiateInitialViewController()
        let vc3 = UIStoryboard.init(name: "3", bundle: Bundle.main).instantiateInitialViewController()
        let vc4 = UIStoryboard.init(name: "4", bundle: Bundle.main).instantiateInitialViewController()
        let vc5 = UIStoryboard.init(name: "5", bundle: Bundle.main).instantiateInitialViewController()
        let vc6 = UIStoryboard.init(name: "6", bundle: Bundle.main).instantiateInitialViewController()
        let vc7 = UIStoryboard.init(name: "7", bundle: Bundle.main).instantiateInitialViewController()
        
        let arrayOfVC:[UIViewController] = [vc1!, vc2!,vc3!,
                                            vc4!,vc5!, vc6!, vc7!]
        
        for (index, value) in arrayOfVC.enumerated() {
            let tabBarItem = UITabBarItem()
            tabBarItem.title = arrayOfTitles[index]
            tabBarItem.image = UIImage(named: arrayOfImages[index])
            value.tabBarItem = tabBarItem
        }
        
        return arrayOfVC as! [ViewController]
        
    }
    func customiseTabItems(tabBar: UITabBar) {
        for item in tabBar.items! {
            item.image = UIImage(named: arrayOfImages[tabBar.items!.index(of: item)!])
            item.title = arrayOfTitles[tabBar.items!.index(of: item)!]
        }
    }


}

extension AppDelegate: UITabBarControllerDelegate {
    
    
}
