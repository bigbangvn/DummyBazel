//
//  AppDelegate.swift
//  DummyProject
//
//  Created by Bang Nguyen on 13/4/20.
//  Copyright © 2020 Grab. All rights reserved.
//

import UIKit
//import DummyProject_AppMainLib

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    print(#function)

//    ViewController2().def()
    ViewController.hello()
    return true
  }
}

