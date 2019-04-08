//
//  MainViewModel.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/7/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import Foundation

final class MainViewModel: BaseViewModel<MainRouter>, MainViewModelType {
    
    override init(session: AppSessionType) {
        super.init(session: session)
        
        setup()
    }
    
    // MARK: Actions
    
    func changeTabAction(to: TabBarItemProtocol, from: TabBarItemProtocol) {
        router?.changeTab(to: to, from: from)
    }
    
}

private extension MainViewModel {
    
    func setup() {
        
    }
    
}
