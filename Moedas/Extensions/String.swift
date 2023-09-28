//
//  String.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 02/07/2023.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
