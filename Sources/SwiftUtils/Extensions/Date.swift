//
//  Date.swift
//  
//
//  Created by Arif Siregar on 27/01/23.
//

import Foundation

extension Date {
    
    public init(dateString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyy-MM-dd"
        let date = formatter.date(from: dateString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    public var shortDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yy"
        return formatter
    }
    
    public func asShortDateString() -> String {
        return shortDateFormatter.string(from: self)
    }
    
    public var longDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter
    }
    
    public func asLongDateString() -> String {
        return longDateFormatter.string(from: self)
    }
    
}
