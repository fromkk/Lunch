//
//  Creatable.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation

@MainActor
public protocol Creatable {
    func create<T>(_ identifier: String, userInfo: [AnyHashable: Any]?) -> T?
}
