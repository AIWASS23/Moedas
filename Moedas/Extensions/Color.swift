//
//  Color.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 28/06/2023.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

//struct ColorTheme2 {
//    let accent =
//    let background =
//    let green =
//    let red =
//    let secondaryText =
//}

struct LaunchTheme {
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
