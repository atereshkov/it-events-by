//
//  AppDelegate.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/5/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        let session = AppSession()
        let router = AppRouter(window: window, session: session)
        router.start(animated: false)
        
        return true
    }
    
}
