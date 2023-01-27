//
//  Date.swift
//  
//
//  Created by Arif Siregar on 27/01/23.
//

import Foundation

extension Date {
    
    init(dateString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyy-MM-dd"
        let date = formatter.date(from: dateString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yy"
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortDateFormatter.string(from: self)
    }
    
    private var longDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter
    }
    
    func asLongDateString() -> String {
        return longDateFormatter.string(from: self)
    }
    
}
