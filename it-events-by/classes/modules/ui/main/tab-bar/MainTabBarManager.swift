//
//  MainTabBarManager.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarManager: MainTabBarManagerProtocol {
    
    weak var delegate: MainTabBarDelegate?
    
    private(set) var items: [TabBarItemProtocol] = []
    private(set) var selectedIndex: Int = 0
    
    private var views: [ViewType]
    private var controls: [UIControl]
    
    init(views: [ViewType], controls: [UIControl]) {
        self.views = views
        self.controls = controls
    }
    
    func initialize() {
        guard controls.count == views.count else { return }
        var items: [TabBarItemProtocol] = []
        
        for index in 0..<controls.count {
            let vc = views[index]
            let button = controls[index]
            let item: TabBarItemProtocol = TabBarItem(view: vc, button: button)
            items.append(item)
        }
        
        self.items = items
        delegate?.setupTabBar(items)
    }
    
    func selectTab(index: Int) {
        guard index >= 0 && index < items.count else { return }
        let buttons = items.map({ $0.button })
        buttonAction(buttons[index])
    }
    
    @objc private func buttonAction(_ sender: UIControl) {
        let buttons = items.map({ $0.button })
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].tintColor = UIColor.blue
        sender.tintColor = UIColor.black
        
        let previousVC = items[previousIndex]
        let selectedVC = items[selectedIndex]
        delegate?.controllerSwitched(to: selectedVC, from: previousVC)
    }
    
}
