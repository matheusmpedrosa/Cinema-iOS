//
//  UILabelExtensions.swift
//  Cinema-iOS
//
//  Created by Matheus Pedrosa on 19/01/20.
//  Copyright © 2020 matheusmpedrosa. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    func setRegularFont() {
        guard let customFont = UIFont(name: "SFCompactRounded-Regular", size: UIFont.labelFontSize) else {
            fatalError("""
                Failed to load the "SFCompactRounded-Regular" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        self.font = UIFontMetrics(forTextStyle: .title1).scaledFont(for: customFont)
        self.adjustsFontForContentSizeCategory = true
    }
    
    func setSemiBoldFont() {
        guard let customFont = UIFont(name: "SFCompactRounded-Semibold", size: UIFont.labelFontSize) else {
            fatalError("""
                Failed to load the "SFCompactRounded-Semibold" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        self.font = UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: customFont)
        self.adjustsFontForContentSizeCategory = true
    }
    
    func setBoldFont() {
        guard let customFont = UIFont(name: "SFCompactRounded-Bold", size: UIFont.buttonFontSize) else {
            fatalError("""
                Failed to load the "SFCompactRounded-Bold" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        self.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont)
        self.adjustsFontForContentSizeCategory = true
    }
}
