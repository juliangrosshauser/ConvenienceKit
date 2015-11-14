//
//  UIColor+Name.swift
//  ConvenienceKit
//
//  Created by Julian Grosshauser on 14/11/15.
//  Copyright © 2015 Julian Grosshauser. All rights reserved.
//

import UIKit

public extension UIColor {
    public convenience init<T:RawRepresentable where T.RawValue: UnsignedIntegerType>(named name: T) {
        self.init(hexadecimalColor: UInt32(name.rawValue.toUIntMax()))
    }
}
