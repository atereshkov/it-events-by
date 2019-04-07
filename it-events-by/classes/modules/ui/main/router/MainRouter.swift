//
//  MainRouter.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

protocol MainRouterType: RouterType {
    var toItem: TabBarItemProtocol? { get }
    var fromItem: TabBarItemProtocol? { get }
    
    func changeTab(to: TabBarItemProtocol, from: TabBarItemProtocol)
}

final class MainRouter: BaseRouter, MainRouterType {
    
    private(set) var toItem: TabBarItemProtocol?
    private(set) var fromItem: TabBarItemProtocol?
    
    func changeTab(to: TabBarItemProtocol, from: TabBarItemProtocol) {
        self.toItem = to
        self.fromItem = from
        
        from.view.willMove(toParent: nil)
        from.view.view.removeFromSuperview()
        from.view.removeFromParent()
        
        guard let containerView = (self.view as? Tabbable)?.containerView else { return }
        self.view?.addChild(to.view)
        to.view.view.frame = containerView.bounds
        to.view.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        containerView.addSubview(to.view.view)
        to.view.didMove(toParent: self.view)
    }
    
}
