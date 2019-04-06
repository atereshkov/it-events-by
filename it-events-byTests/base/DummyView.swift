//
//  DummyView.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit
@testable import it_events_by

class DummyView: BaseView<DummyViewModel> {
    
    private(set) var bindViewModelCalled: Bool = false
    
    override func bindViewModel() {
        super.bindViewModel()
        bindViewModelCalled = true
    }
    
}
