//
//  MainViewMock.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit
@testable import it_events_by

final class MainViewMock: BaseView<MainViewModel>, Tabbable {
    
    weak var containerView: UIView!
    
    convenience init() {
        self.init(containerView: UIView())
    }
    
    init(containerView: UIView) {
        self.containerView = containerView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
