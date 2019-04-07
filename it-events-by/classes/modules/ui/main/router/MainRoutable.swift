//
//  MainRoutable.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit

protocol MainRoutable {
    func goToMain(window: UIWindow)
}

extension MainRoutable where Self: RouterType {
    
    func goToMain(window: UIWindow) {
        let viewModel = MainViewModel(session: session)
        let view = targetView
        view.viewModel = viewModel
        let router = MainRouter(session: session, view: view)
        viewModel.router = router

        let tabBar: MainTabBarManagerProtocol = MainTabBarManager(views: [], controls: [])
        view.tabBar = tabBar
        
        let rootVC = UINavigationController(rootViewController: view)
        window.rootViewController = rootVC
    }
    
    private var targetView: MainView {
        return StoryboardScene.Main.initialScene.instantiate()
    }
    
}
