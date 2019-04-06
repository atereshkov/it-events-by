//
//  AppRouterProtocol.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit

protocol AppRouterProtocol {
    func start(animated: Bool)
    
    var rootViewController: UIViewController? { get }
}
