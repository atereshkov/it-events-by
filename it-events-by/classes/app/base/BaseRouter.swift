//
//  BaseRouter.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit
import Foundation

protocol RouterType: class {
    var view: UIViewController? { get }
    var session: AppSessionType { get }
}

class BaseRouter: RouterType {
    
    let session: AppSessionType
    private(set) weak var view: UIViewController?
    
    init(session: AppSessionType, view: UIViewController) {
        self.session = session
        self.view = view
    }
    
}
