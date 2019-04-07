//
//  MainRouter.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

protocol MainRouterType: RouterType {
    func changeTab(to: TabBarItemProtocol, from: TabBarItemProtocol)
}

final class MainRouter: BaseRouter, MainRouterType {
    
    func changeTab(to: TabBarItemProtocol, from: TabBarItemProtocol) {
        from.view.willMove(toParent: nil)
        from.view.view.removeFromSuperview()
        from.view.removeFromParent()
        
        guard let containerView = (self.view as? MainView)?.containerView else { return }
        self.view?.addChild(to.view)
        to.view.view.frame = containerView.bounds
        to.view.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        containerView.addSubview(to.view.view)
        to.view.didMove(toParent: self.view)
    }
    
}
