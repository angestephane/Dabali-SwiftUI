//
//  Services.swift
//  Dabali
//
//  Created by stephane.boguhe on 08.03.25.
//

import Foundation

protocol ServicesProtocol {
    func fetchFoodLogs(sucsess: @escaping (UserFoodLogs) -> Void, failure: @escaping(Error) -> Void)
}
