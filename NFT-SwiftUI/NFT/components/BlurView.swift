//
//  BlurView.swift
//  NFT
//
//  Created by Lê Minh Hiếu on 08/01/2023.
//

import Foundation
import SwiftUI

struct BlurView: UIViewRepresentable {
    let style: UIBlurEffect.Style = .systemUltraThinMaterial
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
