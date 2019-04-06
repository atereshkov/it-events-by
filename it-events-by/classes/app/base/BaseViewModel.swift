//
//  BaseViewModel.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

protocol ViewModelType: class {
    func onViewDidLoad()
}

class BaseViewModel<Router: RouterType>: ViewModelType {
    
    let session: AppSessionType
    var router: Router?
    
    init(session: AppSessionType) {
        self.session = session
    }
    
    func onViewDidLoad() {
        
    }
    
}
