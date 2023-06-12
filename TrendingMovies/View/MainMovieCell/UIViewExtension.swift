//
//  UIViewExtension.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import UIKit

extension UIView {
    func roundedCorner(_ radius: CGFloat = 8) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }

    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
    
}
