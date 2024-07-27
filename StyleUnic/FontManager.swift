//
//  FontManager.swift
//  StyleUnic
//
//  Created by Ashok on 27/07/24.
//

import Foundation
import UIKit
class FontManager {
    enum Poppins: String {
        case regular = "Poppins-Regular"
        case medium = "Poppins-Medium"
        case semibold = "Poppins-SemiBold"
        case bold = "Poppins-Bold"
    }

    static func poppins(_ style: Poppins, size: CGFloat) -> UIFont {
        return UIFont(name: style.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}
