//
//  UIApplication.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 29/06/2023.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
