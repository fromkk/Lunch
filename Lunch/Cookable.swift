//
//  Maker.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation

public protocol Cookable {
    func cook<T>(_ identifier: String, userInfo: [AnyHashable: Any]?) -> T?
}
