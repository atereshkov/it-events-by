//
//  BaseView.swift
//  it-events-by
//
//  Created by Alexander Tereshkov on 4/6/19.
//  Copyright © 2019 Alexander Tereshkov. All rights reserved.
//

import UIKit

typealias ViewType = UIViewController

class BaseView<ViewModel: ViewModelType>: ViewType {
    
    var viewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        viewModel?.onViewDidLoad()
    }
    
    func bindViewModel() {
        
    }
    
}
