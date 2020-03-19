//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0318..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    
    func reloadDataOnMainThread () {
        DispatchQueue.main.async { self.reloadData() }
    }
}
