//
//  String.swift
//  Dabali
//
//  Created by stephane.boguhe on 11.03.25.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
