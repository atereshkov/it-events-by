//
//  TabBarItem.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import Foundation
import UIKit

protocol TabBarItemProtocol {
    var view: ViewType { get }
    var button: UIControl { get }
}

class TabBarItem: TabBarItemProtocol {
    
    let view: ViewType
    let button: UIControl
    
    init(view: ViewType, button: UIControl) {
        self.view = view
        self.button = button
    }
    
}
