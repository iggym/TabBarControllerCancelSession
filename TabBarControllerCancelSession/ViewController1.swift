//
//  ViewController.swift
//  TabBarControllerCancelSession
//
//  Created by Iggy on 5/2/17.
//  Copyright © 2017 iggym. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getSelectedTabIndex() -> Int {
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        let selected: Int = (appdelegate.tabBarController?.selectedIndex)!
        return selected
    }

    override func viewWillAppear(_ animated: Bool) {
       // print("viewWillAppear The selectec Tab is \(  print(getSelectedTabIndex()))")
        
    }// Called when the view is about to made visible. Default does nothing
    
    override func viewDidAppear(_ animated: Bool) {
          print("viewDidAppear The selectec Tab is \(  getSelectedTabIndex())")
    }// Called when the view has been fully transitioned onto the screen. Default does nothing
    
    override func viewWillDisappear(_ animated: Bool) {
          print("viewWillDisappear  The selectec Tab is \(  getSelectedTabIndex())")
        
    }// Called when the view is dismissed, covered or otherwise hidden. Default does nothing
    
    override func viewDidDisappear(_ animated: Bool) {
          print("viewDidDisappear The selectec Tab is \(  getSelectedTabIndex())")
    }// Called after the view was dismissed, covered or otherwise hidden. Default does nothing
    

}

