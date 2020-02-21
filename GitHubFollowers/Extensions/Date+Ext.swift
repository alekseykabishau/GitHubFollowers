//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0220..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
