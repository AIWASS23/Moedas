//
//  XMarkButton.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 30/06/2023.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
