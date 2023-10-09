//
//  UIScreen.swift
//  NFT
//
//  Created by Lê Minh Hiếu on 07/01/2023.
//

import Foundation
import UIKit

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

func getSafeAreaInsets() -> Dictionary<String, CGFloat> {
    let keyWindow = UIApplication.shared.connectedScenes

        .filter({ $0.activationState == .foregroundActive })

        .map({ $0 as? UIWindowScene })

        .compactMap({ $0 })

        .first?.windows

        .filter({ $0.isKeyWindow }).first

    
    let safeAreaInsets = [
        "top" : keyWindow?.safeAreaInsets.top ?? 0,
        "bottom" : keyWindow?.safeAreaInsets.bottom ?? 0,
    ]

    return safeAreaInsets
}
