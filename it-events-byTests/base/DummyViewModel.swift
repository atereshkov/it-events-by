//
//  DummyViewModel.swift
//  it-events-byTests
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import Foundation
@testable import it_events_by

class DummyViewModel: BaseViewModel<DummyRouter> {
    
    private(set) var onViewDidLoadCalled: Bool = false
    
    override func onViewDidLoad() {
        super.onViewDidLoad()
        onViewDidLoadCalled = true
    }
    
}
