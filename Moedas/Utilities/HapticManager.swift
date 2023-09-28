//
//  HapticManager.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 01/07/2023.
//

import SwiftUI

final class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
