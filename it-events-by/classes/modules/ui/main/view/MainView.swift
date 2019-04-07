//
//  MainView.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit

final class MainView: BaseView<MainViewModel>, Tabbable {
    
    var tabBar: MainTabBarManagerProtocol?
    
    @IBOutlet weak var tabBarStackView: UIStackView!
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    override func bindViewModel() {
        super.bindViewModel()
    }
    
}

private extension MainView {
    
    func setupView() {
        //navigationItem.backBarButtonTitle = ""
        
        tabBar?.delegate = self
        tabBar?.initialize()
    }
    
}

extension MainView: MainTabBarDelegate {
    
    func setupTabBar(_ items: [TabBarItemProtocol]) {
        let buttons = items.map({ $0.button })
        for button in buttons {
            tabBarStackView.addArrangedSubview(button)
        }
    }
    
    func controllerSwitched(to: TabBarItemProtocol, from: TabBarItemProtocol) {
        viewModel?.changeTabAction(to: to, from: from)
    }
    
}
