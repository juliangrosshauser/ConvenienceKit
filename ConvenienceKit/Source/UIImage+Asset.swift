//
//  UIImage+Asset.swift
//  ConvenienceKit
//
//  Created by Julian Grosshauser on 14/11/15.
//  Copyright © 2015 Julian Grosshauser. All rights reserved.
//

import UIKit

public extension UIImage {
    public convenience init<T: RawRepresentable where T.RawValue: StringLiteralConvertible>(asset: T) {
        assert(UIImage(named: String(asset.rawValue)) != nil, "No image named \"\(asset.rawValue)\" found in asset catalog")
        self.init(named: String(asset.rawValue))!
    }
}
